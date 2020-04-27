if (AUDIENCE_BUILD_CLANG_TIDY)
    if (${CMAKE_VERSION} VERSION_LESS "3.6")
        message(STATUS "clang-tidy is not enabled because cmake version is too old")
    else ()
        if (${CMAKE_VERSION} VERSION_LESS "3.8")
            message(WARNING "clang-tidy exit code ignored in this version of cmake")
        endif ()
        find_program(
            AUDIENCE_MODULE_CLANG_TIDY_PROGRAM
            NAMES "clang-tidy"
            DOC "Path to clang-tidy executable")
        mark_as_advanced(AUDIENCE_MODULE_CLANG_TIDY_PROGRAM)
        if (NOT AUDIENCE_MODULE_CLANG_TIDY_PROGRAM)
            message(STATUS "clang-tidy not found.")
        else ()
            message(
                STATUS "Found clang-tidy: ${AUDIENCE_MODULE_CLANG_TIDY_PROGRAM}")
        endif ()
    endif ()
endif ()

function (audience_add_clang_tidy target)
    if (AUDIENCE_MODULE_CLANG_TIDY_PROGRAM AND AUDIENCE_BUILD_CLANG_TIDY)
        # This is for Ninja, Makefile Generators
        message(STATUS "set ${target} CXX_CLANG_TIDY")
        set_target_properties( ${target} PROPERTIES CXX_CLANG_TIDY "${AUDIENCE_MODULE_CLANG_TIDY_PROGRAM}")
    endif ()
endfunction ()