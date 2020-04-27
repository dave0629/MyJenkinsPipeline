cmake_minimum_required(VERSION 3.11)

add_library(audience-common STATIC 
    "audience_common.cpp"
)

target_include_directories(audience-common PUBLIC 
    "${PROJECT_SOURCE_DIR}/include"
)