find_program(CLANG_FORMAT clang-format)
if(NOT CLANG_FORMAT)
        message(STATUS "Did not find clang-format, target format is disabled.")
else()
        message(STATUS "Found clang-format")
	
	file( GLOB_RECURSE ALL_CXX_SOURCE_FILES
        ${PROJECT_SOURCE_DIR}/common/src/*.[ch]pp
        ${PROJECT_SOURCE_DIR}/common/include/*.[ch]
        ${PROJECT_SOURCE_DIR}/device/src/*.[ch]pp
        ${PROJECT_SOURCE_DIR}/device/include/*.[ch]
        ${PROJECT_SOURCE_DIR}/encode/src/*.[ch]pp
        ${PROJECT_SOURCE_DIR}/encode/include/*.[ch] )
	
	add_custom_target( format ALL
        COMMAND find ${ALL_CXX_SOURCE_FILES} | xargs ${CLANG_FORMAT} -style=file -i -verbose --
        COMMENT "===== Formating files with clang-format... ====="
        VERBATIM )
endif()

#create config file
#clang-format -style=Google -dump-config > .clang-format