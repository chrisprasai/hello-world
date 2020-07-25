cmake_minimum_required(VERSION 3.16.2)
project(hello-world)

file(GLOB SOURCES "src/*.c")

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

add_executable(hello-world ${SOURCES})

