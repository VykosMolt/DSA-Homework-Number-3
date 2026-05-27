cmake_minimum_required(VERSION 3.16)

project(SPA_DZ3 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

find_package(SFML 3 REQUIRED COMPONENTS Graphics Window System)

add_executable(spa-dz3 src/main.cpp)
target_link_libraries(spa-dz3 PRIVATE SFML::Graphics SFML::Window SFML::System)

if (MSVC)
    target_compile_options(spa-dz3 PRIVATE /W4)
else()
    target_compile_options(spa-dz3 PRIVATE -Wall -Wextra -pedantic)
endif()
