#include "http_server.h"

#include "system_utils.h"

#include <winsock2.h>
#include <ws2tcpip.h>
#include <windows.h>
#include <winhttp.h>

#include <algorithm>
#include <array>
#include <chrono>
#include <cstdint>
#include <cstring>
#include <sstream>
#include <thread>

#pragma comment(lib, "ws2_32.lib")
#pragma comment(lib, "winhttp.lib")

namespace {

std::string StatusReason(DWORD status_code) {
    switch (status_code) {
    case 200: return "OK";
    case 400: return "Bad Request";
    case 404: return "Not Found";
    case 500: return "Internal Server Error";
    case 502: return "Bad Gateway";
    case 503: return "Service Unavailable";
    default: return "OK";
    }
}

bool SendAll(SOCKET socket_value, const void* buffer, size_t size) {
    const char* cursor = static_cast<const char*>(buffer);
    size_t remaining = size;
    while (remaining > 0) {
        const int sent = send(socket_value, cursor, static_cast<int>(remaining), 0);
        if (sent == SOCKET_ERROR || sent <= 0) {
            return false;
        }
        cursor += sent;
        remaining -= static_cast<size_t>(sent);
    }
    return true;
}

bool SendResponse(
    SOCKET socket_value,
    DWORD status_code,
    const std::vector<std::pair<std::string, std::string>>& headers,
    const std::vector<std::uint8_t>& body) {
    std::ostringstream head;
    head << "HTTP/1.1 " << status_code << " " << StatusReason(status_code) << "\r\n";
    for (const auto& [key, value] : headers) {
        head << key << ": " << value << "\r\n";
    }
    head << "Connection: close\r\n\r\n";
    const std::string head_text = head.str();
    if (!SendAll(socket_value, head_text.data(), head_text.size())) {
        return false;
    }
    if (!body.empty()) {
        return SendAll(socket_value, body.data(), body.size());
    }
    return true;
}

std::pair<std::string, std::string> SplitBasePath(const std::string& raw_path) {
    const auto pos = raw_path.find('?');
    if (pos == std::string::npos) {
        return {raw_path, {}};
    }
    return {raw_path.substr(0, pos), raw_path.substr(pos)};
}

std::wstring QueryHeaderString(HINTERNET request, const wchar_t* header_name) {
    DWORD size = 0;
    WinHttpQueryHeaders(
        request,
        WINHTTP_QUERY_CUSTOM,
        header_name,
        WINHTTP_NO_OUTPUT_BUFFER,
        &size,
        WINHTTP_NO_HEADER_INDEX);
    if (GetLastError() != ERROR_INSUFFICIENT_BUFFER || size == 0) {
        return {};
    }

    std::wstring buffer(size / sizeof(wchar_t), L'\0');
    if (!WinHttpQueryHeaders(
            request,
            WINHTTP_QUERY_CUSTOM,
            header_name,
            buffer.data(),
            &size,
            WINHTTP_NO_HEADER_INDEX)) {
        return {};
    }

    const size_t chars = size / sizeof(wchar_t);
    if (chars == 0) {
        return {};
    }
    if (!buffer.empty() && buffer.back() == L'\0') {
        buffer.pop_back();
    }
    return buffer;
}

struct UpstreamResponse {
    DWORD status_code = 0;
    std::vector<std::pair<std::string, std::string>> headers;
    std::vector<std::uint8_t> body;
};

bool FetchFromMirror(
    const std::string& mirror_ip,
    const std::string& path,
    const std::string& host_header,
    UpstreamResponse* response_out,
    std::string* error_out) {
    const std::wstring mirror_w = Utf8ToWide(mirror_ip);
    const std::wstring path_w = Utf8ToWide(path.empty() ? "/" : path);
    const std::wstring host_header_w = L"Host: " + Utf8ToWide(host_header) + L"\r\nConnection: close\r\n";

    HINTERNET session = WinHttpOpen(
        L"ProTankiProxyClient/1.0",
        WINHTTP_ACCESS_TYPE_DEFAULT_PROXY,
        WINHTTP_NO_PROXY_NAME,
        WINHTTP_NO_PROXY_BYPASS,
        0);
    if (session == nullptr) {
        if (error_out != nullptr) {
            *error_out = "WinHttpOpen failed with error " + std::to_string(GetLastError());
        }
        return false;
    }

    HINTERNET connection = WinHttpConnect(session, mirror_w.c_str(), INTERNET_DEFAULT_HTTP_PORT, 0);
    if (connection == nullptr) {
        if (error_out != nullptr) {
            *error_out = "WinHttpConnect failed with error " + std::to_string(GetLastError());
        }
        WinHttpCloseHandle(session);
        return false;
    }

    HINTERNET request = WinHttpOpenRequest(
        connection,
        L"GET",
        path_w.c_str(),
        nullptr,
        WINHTTP_NO_REFERER,
        WINHTTP_DEFAULT_ACCEPT_TYPES,
        0);
    if (request == nullptr) {
        if (error_out != nullptr) {
            *error_out = "WinHttpOpenRequest failed with error " + std::to_string(GetLastError());
        }
        WinHttpCloseHandle(connection);
        WinHttpCloseHandle(session);
        return false;
    }

    DWORD timeout_ms = 8000;
    WinHttpSetTimeouts(request, timeout_ms, timeout_ms, timeout_ms, timeout_ms);

    const BOOL send_ok = WinHttpSendRequest(
        request,
        host_header_w.c_str(),
        static_cast<DWORD>(host_header_w.size()),
        WINHTTP_NO_REQUEST_DATA,
        0,
        0,
        0);
    if (!send_ok || !WinHttpReceiveResponse(request, nullptr)) {
        if (error_out != nullptr) {
            *error_out = "WinHTTP request failed with error " + std::to_string(GetLastError());
        }
        WinHttpCloseHandle(request);
        WinHttpCloseHandle(connection);
        WinHttpCloseHandle(session);
        return false;
    }

    DWORD status_code = 0;
    DWORD status_size = sizeof(status_code);
    if (!WinHttpQueryHeaders(
            request,
            WINHTTP_QUERY_STATUS_CODE | WINHTTP_QUERY_FLAG_NUMBER,
            WINHTTP_HEADER_NAME_BY_INDEX,
            &status_code,
            &status_size,
            WINHTTP_NO_HEADER_INDEX)) {
        if (error_out != nullptr) {
            *error_out = "WinHttpQueryHeaders(status) failed with error " + std::to_string(GetLastError());
        }
        WinHttpCloseHandle(request);
        WinHttpCloseHandle(connection);
        WinHttpCloseHandle(session);
        return false;
    }

    UpstreamResponse response;
    response.status_code = status_code;

    for (const wchar_t* header_name : {L"Content-Type", L"Last-Modified", L"ETag", L"Cache-Control", L"Expires", L"Location"}) {
        const std::wstring value = QueryHeaderString(request, header_name);
        if (!value.empty()) {
            response.headers.push_back({WideToUtf8(header_name), WideToUtf8(value)});
        }
    }

    for (;;) {
        DWORD available = 0;
        if (!WinHttpQueryDataAvailable(request, &available)) {
            if (error_out != nullptr) {
                *error_out = "WinHttpQueryDataAvailable failed with error " + std::to_string(GetLastError());
            }
            WinHttpCloseHandle(request);
            WinHttpCloseHandle(connection);
            WinHttpCloseHandle(session);
            return false;
        }
        if (available == 0) {
            break;
        }

        const size_t start = response.body.size();
        response.body.resize(start + available);
        DWORD read = 0;
        if (!WinHttpReadData(request, response.body.data() + start, available, &read)) {
            if (error_out != nullptr) {
                *error_out = "WinHttpReadData failed with error " + std::to_string(GetLastError());
            }
            WinHttpCloseHandle(request);
            WinHttpCloseHandle(connection);
            WinHttpCloseHandle(session);
            return false;
        }
        response.body.resize(start + read);
        if (read == 0) {
            break;
        }
    }

    response.headers.push_back({"Content-Length", std::to_string(response.body.size())});
    *response_out = std::move(response);

    WinHttpCloseHandle(request);
    WinHttpCloseHandle(connection);
    WinHttpCloseHandle(session);
    return true;
}

}  // namespace

HttpServer::HttpServer(HttpServerConfig config)
    : config_(std::move(config)) {
}

HttpServer::~HttpServer() {
    Stop();
}

bool HttpServer::Start(std::string* error_out) {
    if (running_.exchange(true)) {
        return true;
    }

    SOCKET listen_socket = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
    if (listen_socket == INVALID_SOCKET) {
        running_ = false;
        if (error_out != nullptr) {
            *error_out = "socket() failed with error " + std::to_string(WSAGetLastError());
        }
        return false;
    }

    BOOL exclusive = TRUE;
    setsockopt(listen_socket, SOL_SOCKET, SO_EXCLUSIVEADDRUSE, reinterpret_cast<const char*>(&exclusive), sizeof(exclusive));

    sockaddr_in address{};
    address.sin_family = AF_INET;
    address.sin_port = htons(config_.bind_port);
    if (InetPtonA(AF_INET, config_.bind_ip.c_str(), &address.sin_addr) != 1) {
        closesocket(listen_socket);
        running_ = false;
        if (error_out != nullptr) {
            *error_out = "InetPtonA failed for bind IP " + config_.bind_ip;
        }
        return false;
    }

    if (bind(listen_socket, reinterpret_cast<sockaddr*>(&address), sizeof(address)) == SOCKET_ERROR) {
        const int last_error = WSAGetLastError();
        closesocket(listen_socket);
        running_ = false;
        if (error_out != nullptr) {
            *error_out = "bind() failed with error " + std::to_string(last_error);
        }
        return false;
    }

    if (listen(listen_socket, SOMAXCONN) == SOCKET_ERROR) {
        const int last_error = WSAGetLastError();
        closesocket(listen_socket);
        running_ = false;
        if (error_out != nullptr) {
            *error_out = "listen() failed with error " + std::to_string(last_error);
        }
        return false;
    }

    listen_socket_ = reinterpret_cast<void*>(static_cast<uintptr_t>(listen_socket));
    accept_thread_ = CreateThread(nullptr, 0, &HttpServer::AcceptThreadProc, this, 0, nullptr);
    if (accept_thread_ == nullptr) {
        closesocket(listen_socket);
        listen_socket_ = nullptr;
        running_ = false;
        if (error_out != nullptr) {
            *error_out = "CreateThread failed with error " + std::to_string(GetLastError());
        }
        return false;
    }

    return true;
}

void HttpServer::Stop() {
    if (!running_.exchange(false)) {
        return;
    }

    if (listen_socket_ != nullptr) {
        const SOCKET socket_value = static_cast<SOCKET>(reinterpret_cast<uintptr_t>(listen_socket_));
        shutdown(socket_value, SD_BOTH);
        closesocket(socket_value);
        listen_socket_ = nullptr;
    }

    if (accept_thread_ != nullptr) {
        WaitForSingleObject(static_cast<HANDLE>(accept_thread_), 3000);
        CloseHandle(static_cast<HANDLE>(accept_thread_));
        accept_thread_ = nullptr;
    }
}

void HttpServer::AcceptLoop() {
    const SOCKET listen_socket = static_cast<SOCKET>(reinterpret_cast<uintptr_t>(listen_socket_));
    while (running_) {
        SOCKET client = accept(listen_socket, nullptr, nullptr);
        if (client == INVALID_SOCKET) {
            if (!running_) {
                break;
            }
            std::this_thread::sleep_for(std::chrono::milliseconds(100));
            continue;
        }

        std::thread([this, client]() {
            HandleClient(static_cast<unsigned long long>(client));
        }).detach();
    }
}

DWORD WINAPI HttpServer::AcceptThreadProc(LPVOID param) {
    static_cast<HttpServer*>(param)->AcceptLoop();
    return 0;
}

void HttpServer::HandleClient(unsigned long long socket_value_raw) {
    const SOCKET client = static_cast<SOCKET>(socket_value_raw);
    std::array<char, 8192> buffer{};
    std::string request;

    for (;;) {
        const int received = recv(client, buffer.data(), static_cast<int>(buffer.size()), 0);
        if (received <= 0) {
            closesocket(client);
            return;
        }
        request.append(buffer.data(), buffer.data() + received);
        if (request.find("\r\n\r\n") != std::string::npos || request.size() > 65536) {
            break;
        }
    }

    const auto line_end = request.find("\r\n");
    if (line_end == std::string::npos) {
        const std::vector<std::uint8_t> body;
        SendResponse(client, 400, {{"Content-Length", "0"}}, body);
        closesocket(client);
        return;
    }

    const std::string request_line = request.substr(0, line_end);
    std::istringstream stream(request_line);
    std::string method;
    std::string raw_path;
    std::string version;
    stream >> method >> raw_path >> version;
    if (AsciiToLower(method) != "get" || raw_path.empty()) {
        const std::vector<std::uint8_t> body;
        SendResponse(client, 400, {{"Content-Length", "0"}}, body);
        closesocket(client);
        return;
    }

    const auto [base_path, _query] = SplitBasePath(raw_path);
    bool ok = false;
    if (base_path == "/config.xml") {
        ok = ServeConfigXml(static_cast<unsigned long long>(client));
    } else if (base_path == "/library.swf" || (base_path.size() >= 12 && base_path.rfind("/library.swf") == base_path.size() - 12)) {
        ok = ServePatchedLibrary(static_cast<unsigned long long>(client));
    } else {
        ok = ProxyRequest(static_cast<unsigned long long>(client), raw_path);
    }

    if (!ok) {
        const std::string message = "request handling failed";
        const std::vector<std::uint8_t> body(message.begin(), message.end());
        SendResponse(client, 500, {
            {"Content-Type", "text/plain; charset=utf-8"},
            {"Content-Length", std::to_string(body.size())}
        }, body);
    }

    closesocket(client);
}

bool HttpServer::ServeConfigXml(unsigned long long socket_value_raw) {
    const SOCKET socket_value = static_cast<SOCKET>(socket_value_raw);
    std::ostringstream xml;
    xml << "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n";
    xml << "<cfg xmlns=\"http://alternativaplatform.com/core/config.xsd\">\n";
    xml << "<server address=\"" << config_.server_host << "\">\n";
    xml << "        <port>" << config_.server_port << "</port>\n";
    xml << "</server>\n";
    xml << "<status>available</status>\n";
    xml << "</cfg>";
    const std::string payload = xml.str();
    const std::vector<std::uint8_t> body(payload.begin(), payload.end());
    return SendResponse(socket_value, 200, {
        {"Content-Type", "application/xml; charset=utf-8"},
        {"Content-Length", std::to_string(body.size())},
        {"Cache-Control", "no-store, no-cache, must-revalidate"},
        {"Pragma", "no-cache"},
        {"Expires", "0"},
    }, body);
}

bool HttpServer::ServePatchedLibrary(unsigned long long socket_value_raw) {
    const SOCKET socket_value = static_cast<SOCKET>(socket_value_raw);
    return SendResponse(socket_value, 200, {
        {"Content-Type", "application/x-shockwave-flash"},
        {"Content-Length", std::to_string(config_.patched_swf.size())},
        {"Cache-Control", "no-store, no-cache, must-revalidate"},
        {"Pragma", "no-cache"},
        {"Expires", "0"},
    }, config_.patched_swf);
}

bool HttpServer::ProxyRequest(unsigned long long socket_value_raw, const std::string& raw_path) {
    const SOCKET socket_value = static_cast<SOCKET>(socket_value_raw);
    if (config_.fallback_mirror_ips.empty()) {
        const std::string message = "no CDN mirrors configured";
        const std::vector<std::uint8_t> body(message.begin(), message.end());
        return SendResponse(socket_value, 502, {
            {"Content-Type", "text/plain; charset=utf-8"},
            {"Content-Length", std::to_string(body.size())},
        }, body);
    }

    std::string last_error;
    for (const auto& mirror_ip : config_.fallback_mirror_ips) {
        for (int attempt = 0; attempt < 2; ++attempt) {
            UpstreamResponse response;
            if (FetchFromMirror(mirror_ip, raw_path, config_.fallback_cdn_host, &response, &last_error)) {
                return SendResponse(socket_value, response.status_code, response.headers, response.body);
            }
        }
    }

    const std::string message = last_error.empty() ? "upstream fetch failed" : last_error;
    const std::vector<std::uint8_t> body(message.begin(), message.end());
    return SendResponse(socket_value, 502, {
        {"Content-Type", "text/plain; charset=utf-8"},
        {"Content-Length", std::to_string(body.size())},
    }, body);
}
