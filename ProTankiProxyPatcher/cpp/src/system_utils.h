#pragma once

#include <optional>
#include <string>
#include <vector>

struct Settings {
    bool auto_launch_game = true;
    std::wstring game_path;
};

std::wstring GetExecutablePath();
std::wstring GetExecutableDirectory();
std::wstring GetSettingsPath();
std::string GetExecutableProductVersion();

Settings LoadSettings();

std::string WideToUtf8(const std::wstring& value);
std::wstring Utf8ToWide(const std::string& value);
std::wstring TrimWide(const std::wstring& value);
std::string TrimAscii(const std::string& value);
std::wstring WideToLower(std::wstring value);
std::string AsciiToLower(std::string value);

std::vector<std::wstring> BuildGameProcessNames(const Settings& settings);
std::optional<std::wstring> FindGameExecutable(const Settings& settings);
bool IsAnyProcessRunning(const std::vector<std::wstring>& exe_names);
bool LaunchDetachedProcess(const std::wstring& exe_path, std::string* error_out);

bool EnsureLoopbackAlias(const std::string& ip, bool* added_out, std::string* error_out);
bool RemoveLoopbackAlias(const std::string& ip, std::string* error_out);
std::vector<std::string> EnsureHostsRedirects(
    const std::string& target_ip,
    const std::vector<std::string>& domains,
    std::string* error_out);
int CleanupHostsRedirects(std::string* error_out);
int ClearWinInetLibraryCache();

std::vector<std::string> ResolveIpv4BypassHosts(const std::string& hostname);
std::vector<std::string> BuildFallbackMirrorIps(
    const std::vector<std::string>& base_ips,
    const std::string& cdn_host,
    const std::string& loopback_ip);
