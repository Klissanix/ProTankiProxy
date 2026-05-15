cmake_minimum_required(VERSION 3.20)

project(ProTankiProxyClient LANGUAGES CXX RC)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

add_executable(
    ProTankiProxyClient
    src/main.cpp
    src/http_server.cpp
    src/system_utils.cpp
    src/resources.rc
)

target_include_directories(ProTankiProxyClient PRIVATE src)
target_compile_definitions(
    ProTankiProxyClient
    PRIVATE
        UNICODE
        _UNICODE
        WINVER=0x0601
        _WIN32_WINNT=0x0601
        WIN32_LEAN_AND_MEAN
        NOMINMAX
)
target_link_libraries(ProTankiProxyClient PRIVATE ws2_32 winhttp dnsapi version)

if(MSVC)
    set_property(TARGET ProTankiProxyClient PROPERTY MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")
    target_compile_options(ProTankiProxyClient PRIVATE /W4 /EHsc /permissive- /utf-8)
    target_link_options(ProTankiProxyClient PRIVATE /SUBSYSTEM:CONSOLE,6.01 /MANIFEST:NO)
endif()

set_target_properties(
    ProTankiProxyClient
    PROPERTIES
        OUTPUT_NAME "ProTankiProxyClient"
        VS_DEBUGGER_WORKING_DIRECTORY "${CMAKE_SOURCE_DIR}"
)
