#include "system_utils.h"

#include "app_config.h"

#include <winsock2.h>
#include <ws2tcpip.h>
#include <windows.h>
#include <winver.h>
#include <windns.h>
#include <tlhelp32.h>

#include <algorithm>
#include <cctype>
#include <cstdlib>
#include <cwctype>
#include <filesystem>
#include <fstream>
#include <locale>
#include <optional>
#include <sstream>

#pragma comment(lib, "dnsapi.lib")

namespace {

bool ParseBool(const std::wstring& value, bool default_value) {
    const std::wstring lowered = WideToLower(TrimWide(value));
    if (lowered == L"1" || lowered == L"true" || lowered == L"yes" || lowered == L"on") {
        return true;
    }
    if (lowered == L"0" || lowered == L"false" || lowered == L"no" || lowered == L"off") {
        return false;
    }
    return default_value;
}

std::wstring GetFileNameOnly(const std::wstring& value) {
    if (value.empty()) {
        return {};
    }
    return std::filesystem::path(value).filename().wstring();
}

bool FileExists(const std::wstring& path) {
    std::error_code ec;
    return !path.empty() && std::filesystem::exists(path, ec) && !ec;
}

std::string RunHiddenProcess(const std::wstring& command_line, DWORD* exit_code_out) {
    SECURITY_ATTRIBUTES sa{};
    sa.nLength = sizeof(sa);
    sa.bInheritHandle = TRUE;

    HANDLE read_pipe = nullptr;
    HANDLE write_pipe = nullptr;
    if (!CreatePipe(&read_pipe, &write_pipe, &sa, 0)) {
        if (exit_code_out != nullptr) {
            *exit_code_out = GetLastError();
        }
        return {};
    }

    SetHandleInformation(read_pipe, HANDLE_FLAG_INHERIT, 0);

    STARTUPINFOW si{};
    si.cb = sizeof(si);
    si.dwFlags = STARTF_USESHOWWINDOW | STARTF_USESTDHANDLES;
    si.wShowWindow = SW_HIDE;
    si.hStdOutput = write_pipe;
    si.hStdError = write_pipe;

    PROCESS_INFORMATION pi{};
    std::wstring mutable_cmd = command_line;
    const BOOL ok = CreateProcessW(
        nullptr,
        mutable_cmd.data(),
        nullptr,
        nullptr,
        TRUE,
        CREATE_NO_WINDOW,
        nullptr,
        nullptr,
        &si,
        &pi);

    CloseHandle(write_pipe);
    write_pipe = nullptr;

    std::string output;
    if (!ok) {
        if (exit_code_out != nullptr) {
            *exit_code_out = GetLastError();
        }
        CloseHandle(read_pipe);
        return output;
    }

    char buffer[4096];
    DWORD bytes_read = 0;
    while (ReadFile(read_pipe, buffer, sizeof(buffer), &bytes_read, nullptr) && bytes_read > 0) {
        output.append(buffer, buffer + bytes_read);
    }

    WaitForSingleObject(pi.hProcess, INFINITE);
    DWORD exit_code = 0;
    GetExitCodeProcess(pi.hProcess, &exit_code);
    if (exit_code_out != nullptr) {
        *exit_code_out = exit_code;
    }

    CloseHandle(pi.hThread);
    CloseHandle(pi.hProcess);
    CloseHandle(read_pipe);
    return output;
}

std::wstring EscapeForCmd(const std::wstring& value) {
    std::wstring result = L"\"";
    for (wchar_t ch : value) {
        if (ch == L'"') {
            result += L'\\';
        }
        result += ch;
    }
    result += L"\"";
    return result;
}

std::pair<std::wstring, std::vector<std::wstring>> ParseHostsLine(const std::wstring& line) {
    std::wstring raw = line;
    const auto comment = raw.find(L'#');
    if (comment != std::wstring::npos) {
        raw.erase(comment);
    }
    raw = TrimWide(raw);
    if (raw.empty()) {
        return {L"", {}};
    }

    std::wistringstream stream(raw);
    std::wstring ip;
    stream >> ip;
    if (ip.empty()) {
        return {L"", {}};
    }

    std::vector<std::wstring> hosts;
    std::wstring host;
    while (stream >> host) {
        hosts.push_back(WideToLower(host));
    }
    return {ip, hosts};
}

}  // namespace

std::wstring GetExecutablePath() {
    std::wstring buffer(MAX_PATH, L'\0');
    for (;;) {
        const DWORD written = GetModuleFileNameW(nullptr, buffer.data(), static_cast<DWORD>(buffer.size()));
        if (written == 0) {
            return {};
        }
        if (written < buffer.size() - 1) {
            buffer.resize(written);
            return buffer;
        }
        buffer.resize(buffer.size() * 2);
    }
}

std::wstring GetExecutableDirectory() {
    const std::filesystem::path exe_path(GetExecutablePath());
    return exe_path.parent_path().wstring();
}

std::wstring GetSettingsPath() {
    std::filesystem::path path(GetExecutableDirectory());
    path /= app_config::kSettingsFileName;
    return path.wstring();
}

std::string GetExecutableProductVersion() {
    const std::wstring exe_path = GetExecutablePath();
    if (exe_path.empty()) {
        return {};
    }

    DWORD ignored = 0;
    const DWORD version_size = GetFileVersionInfoSizeW(exe_path.c_str(), &ignored);
    if (version_size == 0) {
        return {};
    }

    std::vector<std::byte> version_data(version_size);
    if (!GetFileVersionInfoW(exe_path.c_str(), 0, version_size, version_data.data())) {
        return {};
    }

    struct Translation {
        WORD language;
        WORD code_page;
    };

    Translation* translations = nullptr;
    UINT translations_size = 0;
    if (VerQueryValueW(
            version_data.data(),
            L"\\VarFileInfo\\Translation",
            reinterpret_cast<LPVOID*>(&translations),
            &translations_size) &&
        translations != nullptr && translations_size >= sizeof(Translation)) {
        const UINT translation_count = translations_size / sizeof(Translation);
        for (UINT index = 0; index < translation_count; ++index) {
            wchar_t query[64] = {};
            swprintf_s(
                query,
                L"\\StringFileInfo\\%04x%04x\\ProductVersion",
                translations[index].language,
                translations[index].code_page);

            wchar_t* value = nullptr;
            UINT value_size = 0;
            if (VerQueryValueW(
                    version_data.data(),
                    query,
                    reinterpret_cast<LPVOID*>(&value),
                    &value_size) &&
                value != nullptr && value[0] != L'\0') {
                return WideToUtf8(value);
            }
        }
    }

    VS_FIXEDFILEINFO* fixed_info = nullptr;
    UINT fixed_info_size = 0;
    if (VerQueryValueW(
            version_data.data(),
            L"\\",
            reinterpret_cast<LPVOID*>(&fixed_info),
            &fixed_info_size) &&
        fixed_info != nullptr && fixed_info_size >= sizeof(VS_FIXEDFILEINFO)) {
        std::ostringstream version;
        version << HIWORD(fixed_info->dwProductVersionMS) << '.' << LOWORD(fixed_info->dwProductVersionMS) << '.'
                << HIWORD(fixed_info->dwProductVersionLS) << '.' << LOWORD(fixed_info->dwProductVersionLS);
        return version.str();
    }

    return {};
}

Settings LoadSettings() {
    const std::wstring path = GetSettingsPath();
    if (!FileExists(path)) {
        std::wofstream output{std::filesystem::path(path)};
        output.imbue(std::locale::classic());
        output << L"; ProTankiProxyClient settings" << L"\n";
        output << L"auto_launch_game=true" << L"\n";
        output << L"game_path=" << app_config::kDefaultGamePath << L"\n";
        output.close();
    }

    Settings settings;
    std::wifstream input{std::filesystem::path(path)};
    input.imbue(std::locale::classic());
    std::wstring line;
    while (std::getline(input, line)) {
        if (!line.empty() && line.back() == L'\r') {
            line.pop_back();
        }
        line = TrimWide(line);
        if (line.empty() || line[0] == L';' || line[0] == L'#') {
            continue;
        }
        const auto eq = line.find(L'=');
        if (eq == std::wstring::npos) {
            continue;
        }
        const std::wstring key = WideToLower(TrimWide(line.substr(0, eq)));
        const std::wstring value = TrimWide(line.substr(eq + 1));
        if (key == L"auto_launch_game") {
            settings.auto_launch_game = ParseBool(value, settings.auto_launch_game);
        } else if (key == L"game_path") {
            settings.game_path = value;
        }
    }
    return settings;
}

std::string WideToUtf8(const std::wstring& value) {
    if (value.empty()) {
        return {};
    }
    const int size = WideCharToMultiByte(CP_UTF8, 0, value.c_str(), -1, nullptr, 0, nullptr, nullptr);
    if (size <= 1) {
        return {};
    }
    std::string result(static_cast<size_t>(size - 1), '\0');
    WideCharToMultiByte(CP_UTF8, 0, value.c_str(), -1, result.data(), size, nullptr, nullptr);
    return result;
}

std::wstring Utf8ToWide(const std::string& value) {
    if (value.empty()) {
        return {};
    }
    int size = MultiByteToWideChar(CP_UTF8, MB_ERR_INVALID_CHARS, value.c_str(), -1, nullptr, 0);
    UINT code_page = CP_UTF8;
    if (size <= 0) {
        code_page = CP_ACP;
        size = MultiByteToWideChar(code_page, 0, value.c_str(), -1, nullptr, 0);
    }
    if (size <= 1) {
        return {};
    }
    std::wstring result(static_cast<size_t>(size - 1), L'\0');
    MultiByteToWideChar(code_page, 0, value.c_str(), -1, result.data(), size);
    return result;
}

std::wstring TrimWide(const std::wstring& value) {
    const auto begin = value.find_first_not_of(L" \t\r\n");
    if (begin == std::wstring::npos) {
        return {};
    }
    const auto end = value.find_last_not_of(L" \t\r\n");
    return value.substr(begin, end - begin + 1);
}

std::string TrimAscii(const std::string& value) {
    const auto begin = value.find_first_not_of(" \t\r\n");
    if (begin == std::string::npos) {
        return {};
    }
    const auto end = value.find_last_not_of(" \t\r\n");
    return value.substr(begin, end - begin + 1);
}

std::wstring WideToLower(std::wstring value) {
    std::transform(value.begin(), value.end(), value.begin(), [](wchar_t ch) {
        return static_cast<wchar_t>(std::towlower(ch));
    });
    return value;
}

std::string AsciiToLower(std::string value) {
    std::transform(value.begin(), value.end(), value.begin(), [](unsigned char ch) {
        return static_cast<char>(std::tolower(ch));
    });
    return value;
}

std::vector<std::wstring> BuildGameProcessNames(const Settings& settings) {
    std::vector<std::wstring> names;
    if (!settings.game_path.empty()) {
        names.push_back(WideToLower(GetFileNameOnly(settings.game_path)));
    }
    for (const wchar_t* candidate : app_config::kGameExecutableCandidates) {
        names.push_back(WideToLower(GetFileNameOnly(candidate)));
    }
    names.erase(std::remove_if(names.begin(), names.end(), [](const std::wstring& item) {
        return item.empty();
    }), names.end());
    std::sort(names.begin(), names.end());
    names.erase(std::unique(names.begin(), names.end()), names.end());
    return names;
}

std::optional<std::wstring> FindGameExecutable(const Settings& settings) {
    if (FileExists(settings.game_path)) {
        return settings.game_path;
    }
    for (const wchar_t* candidate : app_config::kGameExecutableCandidates) {
        if (FileExists(candidate)) {
            return std::wstring(candidate);
        }
    }
    return std::nullopt;
}

bool IsAnyProcessRunning(const std::vector<std::wstring>& exe_names) {
    if (exe_names.empty()) {
        return false;
    }

    HANDLE snapshot = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
    if (snapshot == INVALID_HANDLE_VALUE) {
        return false;
    }

    PROCESSENTRY32W entry{};
    entry.dwSize = sizeof(entry);
    bool found = false;
    if (Process32FirstW(snapshot, &entry)) {
        do {
            const std::wstring current = WideToLower(entry.szExeFile);
            if (std::find(exe_names.begin(), exe_names.end(), current) != exe_names.end()) {
                found = true;
                break;
            }
        } while (Process32NextW(snapshot, &entry));
    }

    CloseHandle(snapshot);
    return found;
}

bool LaunchDetachedProcess(const std::wstring& exe_path, std::string* error_out) {
    STARTUPINFOW si{};
    si.cb = sizeof(si);
    PROCESS_INFORMATION pi{};
    std::wstring mutable_cmd = EscapeForCmd(exe_path);
    const BOOL ok = CreateProcessW(
        exe_path.c_str(),
        mutable_cmd.data(),
        nullptr,
        nullptr,
        FALSE,
        0,
        nullptr,
        std::filesystem::path(exe_path).parent_path().c_str(),
        &si,
        &pi);
    if (!ok) {
        if (error_out != nullptr) {
            *error_out = "CreateProcessW failed with error " + std::to_string(GetLastError());
        }
        return false;
    }

    CloseHandle(pi.hThread);
    CloseHandle(pi.hProcess);
    return true;
}

bool EnsureLoopbackAlias(const std::string& ip, bool* added_out, std::string* error_out) {
    if (added_out != nullptr) {
        *added_out = false;
    }

    const std::wstring check_cmd = L"cmd.exe /C netsh interface ip show address " + EscapeForCmd(app_config::kLoopbackInterface);
    DWORD exit_code = 0;
    const std::string existing = RunHiddenProcess(check_cmd, &exit_code);
    if (exit_code == 0 && existing.find(ip) != std::string::npos) {
        return true;
    }

    const std::wstring add_cmd =
        L"cmd.exe /C netsh interface ip add address " +
        EscapeForCmd(app_config::kLoopbackInterface) + L" " +
        Utf8ToWide(ip) + L" 255.255.255.255";
    const std::string output = RunHiddenProcess(add_cmd, &exit_code);
    if (exit_code == 0) {
        if (added_out != nullptr) {
            *added_out = true;
        }
        return true;
    }

    if (error_out != nullptr) {
        *error_out = output.empty()
            ? "netsh failed to add loopback alias with exit code " + std::to_string(exit_code)
            : TrimAscii(output);
    }
    return false;
}

bool RemoveLoopbackAlias(const std::string& ip, std::string* error_out) {
    const std::wstring delete_cmd =
        L"cmd.exe /C netsh interface ip delete address " +
        EscapeForCmd(app_config::kLoopbackInterface) + L" " +
        Utf8ToWide(ip);
    DWORD exit_code = 0;
    const std::string output = RunHiddenProcess(delete_cmd, &exit_code);
    if (exit_code == 0) {
        return true;
    }
    if (error_out != nullptr) {
        *error_out = output.empty()
            ? "netsh failed to remove loopback alias with exit code " + std::to_string(exit_code)
            : TrimAscii(output);
    }
    return false;
}

std::vector<std::string> EnsureHostsRedirects(
    const std::string& target_ip,
    const std::vector<std::string>& domains,
    std::string* error_out) {
    const std::wstring hosts_path = app_config::kHostsFile;
    std::vector<std::string> added;

    std::wifstream input{std::filesystem::path(hosts_path)};
    input.imbue(std::locale::classic());
    if (!input.is_open()) {
        if (error_out != nullptr) {
            *error_out = "Failed to open hosts file for reading";
        }
        return added;
    }

    std::vector<std::wstring> lines;
    std::wstring line;
    while (std::getline(input, line)) {
        if (!line.empty() && line.back() == L'\r') {
            line.pop_back();
        }
        lines.push_back(line);
    }
    input.close();

    std::vector<std::wstring> cleaned;
    const std::wstring target_ip_w = Utf8ToWide(target_ip);
    for (const std::wstring& current : lines) {
        if (current.find(app_config::kHostsMarker) != std::wstring::npos) {
            const auto parsed = ParseHostsLine(current);
            if (!parsed.first.empty() && parsed.first != target_ip_w) {
                bool skip = false;
                for (const auto& host : parsed.second) {
                    if (std::find_if(domains.begin(), domains.end(), [&](const std::string& domain) {
                        return WideToLower(Utf8ToWide(domain)) == host;
                    }) != domains.end()) {
                        skip = true;
                        break;
                    }
                }
                if (skip) {
                    continue;
                }
            }
        }
        cleaned.push_back(current);
    }

    std::vector<std::wstring> domain_lower;
    for (const std::string& domain : domains) {
        domain_lower.push_back(WideToLower(Utf8ToWide(domain)));
    }

    std::vector<std::wstring> new_entries;
    for (size_t index = 0; index < domains.size(); ++index) {
        bool already_mapped = false;
        for (const std::wstring& current : cleaned) {
            const auto parsed = ParseHostsLine(current);
            if (parsed.first.empty()) {
                continue;
            }
            if (std::find(parsed.second.begin(), parsed.second.end(), domain_lower[index]) != parsed.second.end()) {
                already_mapped = true;
                break;
            }
        }
        if (!already_mapped) {
            new_entries.push_back(target_ip_w + L" " + Utf8ToWide(domains[index]) + L" " + app_config::kHostsMarker);
            added.push_back(domains[index]);
        }
    }

    if (!new_entries.empty()) {
        std::wofstream output{std::filesystem::path(hosts_path), std::ios::trunc};
        output.imbue(std::locale::classic());
        if (!output.is_open()) {
            if (error_out != nullptr) {
                *error_out = "Failed to open hosts file for writing";
            }
            added.clear();
            return added;
        }
        for (const std::wstring& current : cleaned) {
            output << current << L"\n";
        }
        for (const std::wstring& entry : new_entries) {
            output << entry << L"\n";
        }
    }

    return added;
}

int CleanupHostsRedirects(std::string* error_out) {
    const std::wstring hosts_path = app_config::kHostsFile;
    std::wifstream input{std::filesystem::path(hosts_path)};
    input.imbue(std::locale::classic());
    if (!input.is_open()) {
        return 0;
    }

    std::vector<std::wstring> lines;
    std::wstring line;
    while (std::getline(input, line)) {
        if (!line.empty() && line.back() == L'\r') {
            line.pop_back();
        }
        lines.push_back(line);
    }
    input.close();

    std::vector<std::wstring> keep;
    int removed = 0;
    for (const auto& current : lines) {
        if (current.find(app_config::kHostsMarker) != std::wstring::npos) {
            ++removed;
            continue;
        }
        keep.push_back(current);
    }

    if (removed == 0) {
        return 0;
    }

    std::wofstream output{std::filesystem::path(hosts_path), std::ios::trunc};
    output.imbue(std::locale::classic());
    if (!output.is_open()) {
        if (error_out != nullptr) {
            *error_out = "Failed to open hosts file for cleanup";
        }
        return 0;
    }
    for (const std::wstring& current : keep) {
        output << current << L"\n";
    }
    return removed;
}

int ClearWinInetLibraryCache() {
    wchar_t* local_app_data = nullptr;
    size_t len = 0;
    _wdupenv_s(&local_app_data, &len, L"LOCALAPPDATA");
    if (local_app_data == nullptr || len == 0) {
        if (local_app_data != nullptr) {
            free(local_app_data);
        }
        return 0;
    }

    std::filesystem::path cache_dir(local_app_data);
    free(local_app_data);
    cache_dir /= L"Microsoft\\Windows\\INetCache";
    std::error_code ec;
    if (!std::filesystem::exists(cache_dir, ec) || ec) {
        return 0;
    }

    int removed = 0;
    for (const auto& entry : std::filesystem::recursive_directory_iterator(
             cache_dir,
             std::filesystem::directory_options::skip_permission_denied,
             ec)) {
        if (ec || !entry.is_regular_file(ec)) {
            continue;
        }
        const std::wstring file_name = WideToLower(entry.path().filename().wstring());
        const bool matches_swf = file_name.rfind(L"library", 0) == 0 && entry.path().extension() == L".swf";
        const bool matches_tara = file_name.rfind(L"library", 0) == 0 && entry.path().extension() == L".tara";
        if (!matches_swf && !matches_tara) {
            continue;
        }
        std::error_code remove_ec;
        if (std::filesystem::remove(entry.path(), remove_ec) && !remove_ec) {
            ++removed;
        }
    }
    return removed;
}

std::vector<std::string> ResolveIpv4BypassHosts(const std::string& hostname) {
    std::vector<std::string> results;
    PDNS_RECORD records = nullptr;
    const DNS_STATUS status = DnsQuery_A(
        hostname.c_str(),
        DNS_TYPE_A,
        DNS_QUERY_BYPASS_CACHE | DNS_QUERY_NO_HOSTS_FILE | DNS_QUERY_WIRE_ONLY,
        nullptr,
        &records,
        nullptr);

    if (status != ERROR_SUCCESS || records == nullptr) {
        return results;
    }

    for (PDNS_RECORD current = records; current != nullptr; current = current->pNext) {
        if (current->wType != DNS_TYPE_A) {
            continue;
        }
        IN_ADDR addr{};
        addr.S_un.S_addr = current->Data.A.IpAddress;
        char buffer[16] = {};
        if (InetNtopA(AF_INET, &addr, buffer, sizeof(buffer)) != nullptr) {
            results.emplace_back(buffer);
        }
    }

    DnsRecordListFree(records, DnsFreeRecordList);
    std::sort(results.begin(), results.end());
    results.erase(std::unique(results.begin(), results.end()), results.end());
    return results;
}

std::vector<std::string> BuildFallbackMirrorIps(
    const std::vector<std::string>& base_ips,
    const std::string& cdn_host,
    const std::string& loopback_ip) {
    std::vector<std::string> results;
    auto push_unique = [&](const std::string& ip) {
        if (ip.empty() || ip == loopback_ip || ip.rfind("127.", 0) == 0) {
            return;
        }
        if (std::find(results.begin(), results.end(), ip) == results.end()) {
            results.push_back(ip);
        }
    };

    for (const auto& ip : base_ips) {
        push_unique(ip);
    }
    for (const auto& ip : ResolveIpv4BypassHosts(cdn_host)) {
        push_unique(ip);
    }
    return results;
}
