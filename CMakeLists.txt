cmake_minimum_required(VERSION 2.8)
project(SSVLuaWrapper)

set(CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/../SSVCMake/cmake/modules/;${CMAKE_SOURCE_DIR}/extlibs/SSVCMake/cmake/modules/;${CMAKE_MODULE_PATH}")
include(SSVCMake)

SSVCMake_setDefaults()
find_package(LUA REQUIRED)
SSVCMake_setAndInstallHeaderOnly()
