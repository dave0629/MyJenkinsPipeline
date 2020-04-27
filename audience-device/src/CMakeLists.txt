cmake_minimum_required(VERSION 3.11)

add_library(audience-device STATIC 
    "audience_device.cpp"
)

target_include_directories(audience-device PUBLIC 
    "${PROJECT_SOURCE_DIR}/include"
)