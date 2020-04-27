cmake_minimum_required(VERSION 3.11)

add_executable(audience-encode-tests "audience_encode_tests.cpp")

target_link_libraries(audience-encode-tests PRIVATE
    audience-encode
    gtest 
    gtest_main
)

add_test("encode_tests" audience-encode-tests)