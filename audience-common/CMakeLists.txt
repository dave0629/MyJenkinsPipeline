cmake_minimum_required(VERSION 3.11)

project("audience-common")

set(DOXYGEN_PROJECT_NAME "Audience Common Module")
set(DOXYGEN_PROJECT_BRIEF "A C++ Library for Audience Common")
# set(DOXYGEN_PROJECT_NUMBER "")
set(DOXYGEN_EXCLUDE_PATTERNS "*/common/test/*")
set(DOXYGEN_EXCLUDE_SYMBOLS "test")

add_subdirectory("src")

audience_add_clang_tidy(audience-common)

if (AUDIENCE_BUILD_TESTS)
    enable_testing()
    add_subdirectory("test")
endif (AUDIENCE_BUILD_TESTS)