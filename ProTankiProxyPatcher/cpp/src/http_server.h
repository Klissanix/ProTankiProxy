#pragma once

#include <atomic>
#include <cstdint>
#include <string>
#include <vector>

struct HttpServerConfig {
    std::string bind_ip;
    unsigned short bind_port = 0;
    std::string server_host;
    unsigned short server_port = 0;
    std::string fallback_cdn_host;
    std::vector<std::string> fallback_mirror_ips;
    std::vector<std::uint8_t> patched_swf;
};

class HttpServer {
public:
    explicit HttpServer(HttpServerConfig config);
    ~HttpServer();

    bool Start(std::string* error_out);
    void Stop();

private:
    static unsigned long __stdcall AcceptThreadProc(void* param);
    void AcceptLoop();
    void HandleClient(unsigned long long socket_value);

    bool ServeConfigXml(unsigned long long socket_value);
    bool ServePatchedLibrary(unsigned long long socket_value);
    bool ProxyRequest(unsigned long long socket_value, const std::string& raw_path);

    HttpServerConfig config_;
    void* listen_socket_ = nullptr;
    void* accept_thread_ = nullptr;
    std::atomic<bool> running_{false};
};
