cmake_minimum_required (VERSION 2.6)
project (flower)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -O0 -ggdb3 -fno-builtin-malloc -fno-builtin-calloc -fno-builtin-realloc -fno-builtin-free")
set(CMAKE_LD_FLAGS "${CMAKE_LD_FLAGS} -lpcre -ltcmalloc")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_CXX_COMPILER clang++)
set(CMAKE_C_COMPILER clang)

set(SRCS src/ghttpd_core.cpp
  src/ghttpd_event.cpp
  src/ghttpd_shedule.cpp
  src/ghttpd_httpd.cpp)

include_directories(./include)


add_executable(ghttpd ${SRCS})
TARGET_LINK_LIBRARIES(ghttpd
  pthread)

