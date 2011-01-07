# Top-level CMakeLists.txt for a simple Vala-language project.  See the README
# file in this directory for the motivations behind this project.

# Version 2.8.0 or above of cmake is required!
CMAKE_MINIMUM_REQUIRED(VERSION 2.8.0 FATAL_ERROR)

# TOASK: How to avoid adding C language
project(vala_sample Vala C)

add_subdirectory(src)
add_subdirectory(test)
