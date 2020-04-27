# CMakeList.txt : Top-level CMake project file, do global configuration
# and include sub-projects here.
#
cmake_minimum_required(VERSION 3.11)

project("audience-modules")

option(AUDIENCE_BUILD_TESTS "Build all of audience tests." OFF)
option(AUDIENCE_BUILD_DOXYGEN "Build doxgen docs" OFF)
option(AUDIENCE_BUILD_CLANG_TIDY "Run clang tidy" OFF)

include("cmake/EnableDoxygen.cmake")
include("cmake/EnableClangTidy.cmake")

# Include sub-projects.
add_subdirectory("audience-common")
add_subdirectory("audience-device")
add_subdirectory("audience-encode")

if (AUDIENCE_BUILD_TESTS)
    enable_testing()
    add_subdirectory("third_party/googletest")
endif (AUDIENCE_BUILD_TESTS)

