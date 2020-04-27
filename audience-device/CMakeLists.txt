cmake_minimum_required(VERSION 3.11)

project("audience-device")

set(DOXYGEN_PROJECT_NAME "Audience Device Module")
set(DOXYGEN_PROJECT_BRIEF "A C++ Library for Audience Device")
# set(DOXYGEN_PROJECT_NUMBER "")
set(DOXYGEN_EXCLUDE_PATTERNS "*/device/test/*")
set(DOXYGEN_EXCLUDE_SYMBOLS "test")

add_subdirectory("src")

audience_add_clang_tidy(audience-device)

if (AUDIENCE_BUILD_TESTS)
    enable_testing()
    add_subdirectory("test")
endif (AUDIENCE_BUILD_TESTS)