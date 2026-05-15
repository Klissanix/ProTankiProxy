#include "app_config.h"
#include "http_server.h"
#include "resource.h"
#include "system_utils.h"

#include <winsock2.h>
#include <windows.h>

#include <atomic>
#include <chrono>
#include <cstdint>
#include <iostream>
#include <memory>
#include <optional>
#include <stdexcept>
#include <string>
#include <thread>
#include <vector>

namespace {

struct RuntimeState {
    bool alias_added = false;
    bool ws2_started = false;
    HttpServer* server = nullptr;
    std::atomic<bool> cleanup_started{false};
} g_runtime;

void PrintLine(const std::string& text) {
    std::cout << text << std::endl;
}

void PrintStartupBanner() {
    const std::string version = GetExecutableProductVersion();
    if (version.empty()) {
        PrintLine("[*] starting ProTankiProxyClient");
    } else {
        PrintLine("[*] starting ProTankiProxyClient v" + version);
    }
    PrintLine("[*] Powered by DOKERcom");
}

void NotifyGameAlreadyRunning() {
    PrintLine("[!] game is already running; close it before starting the cheat");
    MessageBoxW(
        nullptr,
        L"The game is currently running.\n\nClose it before starting the cheat.",
        app_config::kAppTitle,
        MB_ICONWARNING | MB_OK | MB_TOPMOST);
}

std::vector<std::uint8_t> LoadEmbeddedPatchedSwf() {
    HRSRC resource = FindResourceW(nullptr, MAKEINTRESOURCEW(IDR_PATCHED_LIBRARY_SWF), RT_RCDATA);
    if (resource == nullptr) {
        throw std::runtime_error("Failed to find embedded patched SWF resource");
    }

    const DWORD size = SizeofResource(nullptr, resource);
    HGLOBAL handle = LoadResource(nullptr, resource);
    if (handle == nullptr || size == 0) {
        throw std::runtime_error("Failed to load embedded patched SWF resource");
    }

    const void* locked = LockResource(handle);
    if (locked == nullptr) {
        throw std::runtime_error("Failed to lock embedded patched SWF resource");
    }

    const auto* bytes = static_cast<const std::uint8_t*>(locked);
    return std::vector<std::uint8_t>(bytes, bytes + size);
}

void CleanupRuntime() {
    if (g_runtime.cleanup_started.exchange(true)) {
        return;
    }

    if (g_runtime.server != nullptr) {
        g_runtime.server->Stop();
        g_runtime.server = nullptr;
    }

    std::string cleanup_error;
    const int removed_hosts = CleanupHostsRedirects(&cleanup_error);
    if (!cleanup_error.empty()) {
        PrintLine("[!] hosts cleanup warning: " + cleanup_error);
    } else if (removed_hosts > 0) {
        PrintLine("[*] hosts cleanup removed " + std::to_string(removed_hosts) + " auto entry(s)");
    }

    if (g_runtime.alias_added) {
        std::string alias_error;
        if (RemoveLoopbackAlias(app_config::kConfigHttpHost, &alias_error)) {
            PrintLine("[*] removed loopback alias " + std::string(app_config::kConfigHttpHost));
        } else if (!alias_error.empty()) {
            PrintLine("[!] loopback cleanup warning: " + alias_error);
        }
    }

    if (g_runtime.ws2_started) {
        WSACleanup();
        g_runtime.ws2_started = false;
    }
}

BOOL WINAPI ConsoleHandler(DWORD signal) {
    switch (signal) {
    case CTRL_C_EVENT:
    case CTRL_BREAK_EVENT:
    case CTRL_CLOSE_EVENT:
    case CTRL_LOGOFF_EVENT:
    case CTRL_SHUTDOWN_EVENT:
        CleanupRuntime();
        return FALSE;
    default:
        return FALSE;
    }
}

bool WaitForGameExit(const std::vector<std::wstring>& process_names) {
    bool observed_running = false;
    for (int i = 0; i < 120; ++i) {
        if (IsAnyProcessRunning(process_names)) {
            observed_running = true;
            break;
        }
        std::this_thread::sleep_for(std::chrono::milliseconds(500));
    }

    if (!observed_running) {
        PrintLine("[!] game process did not appear after launch; keeping proxy alive until ENTER");
        std::string dummy;
        std::getline(std::cin, dummy);
        return false;
    }

    PrintLine("[*] game detected; proxy will stop after the game exits");
    while (IsAnyProcessRunning(process_names)) {
        std::this_thread::sleep_for(std::chrono::seconds(1));
    }
    return true;
}

}  // namespace

int wmain() {
    SetConsoleCtrlHandler(ConsoleHandler, TRUE);
    SetConsoleTitleW(app_config::kAppTitle);
    PrintStartupBanner();

    HANDLE mutex = CreateMutexW(nullptr, TRUE, app_config::kMutexName);
    if (mutex == nullptr) {
        PrintLine("[!] failed to create single-instance mutex");
        return 1;
    }
    if (GetLastError() == ERROR_ALREADY_EXISTS) {
        PrintLine("[!] ProTankiProxyClient is already running");
        CloseHandle(mutex);
        return 1;
    }

    int exit_code = 0;
    std::unique_ptr<HttpServer> server;
    try {
        const Settings settings = LoadSettings();
        const std::vector<std::wstring> process_names = BuildGameProcessNames(settings);

        if (IsAnyProcessRunning(process_names)) {
            NotifyGameAlreadyRunning();
            CloseHandle(mutex);
            return 1;
        }

        WSADATA wsa_data{};
        if (WSAStartup(MAKEWORD(2, 2), &wsa_data) != 0) {
            throw std::runtime_error("WSAStartup failed");
        }
        g_runtime.ws2_started = true;

        const std::vector<std::uint8_t> patched_swf = LoadEmbeddedPatchedSwf();
        PrintLine("[+] embedded patched SWF loaded: " + std::to_string(patched_swf.size()) + " bytes");

        std::string alias_error;
        if (!EnsureLoopbackAlias(app_config::kConfigHttpHost, &g_runtime.alias_added, &alias_error)) {
            throw std::runtime_error("loopback alias setup failed: " + alias_error);
        }
        PrintLine(
            g_runtime.alias_added
                ? "[+] loopback alias added for 146.59.110.103"
                : "[+] loopback alias already present for 146.59.110.103");

        std::vector<std::string> domains;
        for (const char* domain : app_config::kFallbackDomains) {
            domains.emplace_back(domain);
        }

        std::string hosts_error;
        const auto added_hosts = EnsureHostsRedirects(app_config::kConfigHttpHost, domains, &hosts_error);
        if (!hosts_error.empty()) {
            PrintLine("[!] hosts warning: " + hosts_error);
        } else if (!added_hosts.empty()) {
            PrintLine("[+] hosts redirects added: " + std::to_string(added_hosts.size()));
        }

        const int cleared_cache = ClearWinInetLibraryCache();
        if (cleared_cache > 0) {
            PrintLine("[*] cleared WinInet library cache files: " + std::to_string(cleared_cache));
        }

        const std::vector<std::string> mirrors = BuildFallbackMirrorIps(
            {app_config::kFallbackMirrorIp},
            app_config::kFallbackCdnHost,
            app_config::kConfigHttpHost);
        if (mirrors.empty()) {
            throw std::runtime_error("no upstream CDN mirrors available");
        }

        PrintLine("[+] upstream mirrors:");
        for (const auto& ip : mirrors) {
            PrintLine("    - " + ip);
        }

        HttpServerConfig server_config;
        server_config.bind_ip = app_config::kConfigHttpHost;
        server_config.bind_port = app_config::kConfigHttpPort;
        server_config.server_host = app_config::kServerHost;
        server_config.server_port = app_config::kServerPort;
        server_config.fallback_cdn_host = app_config::kFallbackCdnHost;
        server_config.fallback_mirror_ips = mirrors;
        server_config.patched_swf = patched_swf;

        server = std::make_unique<HttpServer>(std::move(server_config));
        g_runtime.server = server.get();

        std::string server_error;
        if (!server->Start(&server_error)) {
            throw std::runtime_error("HTTP server start failed: " + server_error);
        }

        PrintLine("[+] local HTTP server ready on http://146.59.110.103:80/");
        PrintLine("[+] /config.xml -> real game server");
        PrintLine("[+] /library.swf -> embedded patched SWF");

        bool launched = false;
        if (settings.auto_launch_game) {
            if (const auto game_exe = FindGameExecutable(settings)) {
                std::string launch_error;
                if (LaunchDetachedProcess(*game_exe, &launch_error)) {
                    PrintLine("[+] launched game: " + WideToUtf8(*game_exe));
                    launched = true;
                } else {
                    PrintLine("[!] failed to launch game: " + launch_error);
                }
            } else {
                PrintLine("[!] game executable not found; using manual mode");
            }
        }

        if (launched) {
            WaitForGameExit(process_names);
        } else {
            PrintLine("[*] proxy is active. Launch the game manually, then press ENTER after the game is closed.");
            std::string dummy;
            std::getline(std::cin, dummy);
        }
    } catch (const std::exception& exc) {
        PrintLine(std::string("[!] fatal error: ") + exc.what());
        MessageBoxA(nullptr, exc.what(), "ProTankiProxyClient", MB_ICONERROR | MB_OK);
        exit_code = 1;
    }

    CleanupRuntime();
    CloseHandle(mutex);
    return exit_code;
}
