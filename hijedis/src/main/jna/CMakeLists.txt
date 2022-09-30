cmake_minimum_required(VERSION 3.10)

project(hijedis VERSION 0.1)


# -O 编译优化 O1级别
# -g 生成调试信息
# -shared 生成共享目标文件。通常用在建立共享库时。
# -Wall 打开所有告警
set(CMAKE_C_FLAGS "-O -g -Wall")

execute_process(COMMAND sh build-hiredis.sh WORKING_DIRECTORY ${CMAKE_SOURCE_DIR})

add_library(hijedis SHARED jna_hiredis.c)

target_link_libraries(hijedis ${CMAKE_SOURCE_DIR}/hiredis/libhiredis.a)

include_directories(${CMAKE_SOURCE_DIR}/hiredis)