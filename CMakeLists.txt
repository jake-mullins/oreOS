cmake_minimum_requires(VERSION 3.23)
project(oreOS)

set(CMAKE_CXX_STANDARD 17)

file(GLOB SOURCES *.c *.h)

add_executable(oreOS ${SOURCES})
