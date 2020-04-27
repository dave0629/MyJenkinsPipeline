cmake_minimum_required(VERSION 3.11)

project("audience-encode")

set(DOXYGEN_PROJECT_NAME "Audience Encoder Module")
set(DOXYGEN_PROJECT_BRIEF "A C++ Library for Audience Encoder")
# set(DOXYGEN_PROJECT_NUMBER "")
set(DOXYGEN_EXCLUDE_PATTERNS "*/encode/test/*")
set(DOXYGEN_EXCLUDE_SYMBOLS "test")

add_subdirectory("src")

audience_add_clang_tidy(audience-encode)

if (AUDIENCE_BUILD_TESTS)
    enable_testing()
    add_subdirectory("test")
endif (AUDIENCE_BUILD_TESTS)

install(TARGETS audience-encode 
        LIBRARY DESTINATION "lib"
        PUBLIC_HEADER DESTINATION "include"
)

install(DIRECTORY "${PROJECT_SOURCE_DIR}/include/"
        DESTINATION "include"
        FILES_MATCHING PATTERN "*.h"
)