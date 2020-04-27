cmake_minimum_required(VERSION 3.11)

add_library(audience-encode STATIC 
    "audience_session.cpp"
)

target_include_directories(audience-encode PUBLIC 
    "${PROJECT_SOURCE_DIR}/include"
)

target_link_libraries(audience-encode PUBLIC 
    audience-device
)