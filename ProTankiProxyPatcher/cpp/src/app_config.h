#pragma once

#include <array>

namespace app_config {

inline constexpr wchar_t kAppTitle[] = L"ProTankiProxyClient";
inline constexpr char kConfigHttpHost[] = "146.59.110.103";
inline constexpr unsigned short kConfigHttpPort = 80;
inline constexpr char kServerHost[] = "146.59.110.146";
inline constexpr unsigned short kServerPort = 25565;
inline constexpr char kFallbackCdnHost[] = "s.pro-tanki.com";
inline constexpr char kFallbackMirrorIp[] = "194.67.196.216";
inline constexpr wchar_t kHostsFile[] = L"C:\\Windows\\System32\\drivers\\etc\\hosts";
inline constexpr wchar_t kHostsMarker[] = L"# protanki-proxy-auto";
inline constexpr wchar_t kSettingsFileName[] = L"settings.ini";
inline constexpr wchar_t kMutexName[] = L"Global\\ProTankiProxyClientRuntime";
inline constexpr wchar_t kLoopbackInterface[] = L"Loopback Pseudo-Interface 1";
inline constexpr wchar_t kDefaultGamePath[] = L"C:\\Program Files\\ProTanki Online\\ProTanki.exe";

inline constexpr std::array<const char*, 2> kFallbackDomains = {
    "s.pro-tanki.com",
    "tankiresources.com",
};

inline constexpr std::array<const wchar_t*, 4> kGameExecutableCandidates = {
    L"C:\\Program Files\\ProTanki Online\\ProTanki.exe",
    L"C:\\Program Files (x86)\\ProTanki Online\\ProTanki.exe",
    L"C:\\Program Files\\ProTanki Online\\ProTanki Online.exe",
    L"C:\\Program Files (x86)\\ProTanki Online\\ProTanki Online.exe",
};

}  // namespace app_config
