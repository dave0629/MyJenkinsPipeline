cmake_minimum_required(VERSION 3.11)

include(FetchContent)

FetchContent_Declare(
    googletest
    GIT_REPOSITORY  https://github.com/google/googletest.git
    GIT_TAG         release-1.10.0
)

# Prevent overriding the parent project's compiler/linker settings on Windows
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
set(INSTALL_GTEST OFF CACHE BOOL "" FORCE)

FetchContent_MakeAvailable(googletest)