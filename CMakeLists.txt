cmake_minimum_required(VERSION 2.8)
project(SSVLuaWrapper)

set(SSVLUAWRAPPER_BUILD_SHARED_LIB FALSE CACHE BOOL "Build shared libraries.")
set(CMAKE_BUILD_TYPE Release CACHE STRING "Build type." FORCE)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11" CACHE STRING "" FORCE)

set(LUA51_INCLUDE_DIR "" CACHE STRING "Lua 5.1 include directory")
set(LUA51_LIBRARY "" CACHE STRING "Lua 5.1 library file")

if(SSVLUAWRAPPER_BUILD_SHARED_LIB)
	set(LIB_TYPE SHARED)
else()
	set(LIB_TYPE STATIC)
endif()

set(SRC_DIR "src")
set(INC_DIR "include")

set(
	SOURCES
	${INC_DIR}/${PROJECT_NAME}/LuaContext/LuaContext.h
	${SRC_DIR}/${PROJECT_NAME}/LuaContext/LuaContext.cpp
)

include_directories(${LUA51_INCLUDE_DIR})
include_directories(${INC_DIR})

add_library(${PROJECT_NAME} ${LIB_TYPE} ${SOURCES})
target_link_libraries(SSVLuaWrapper ${LUA51_LIBRARY})

if(SSVLUAWRAPPER_BUILD_SHARED_LIB)
	set_target_properties(${PROJECT_NAME} PROPERTIES DEBUG_POSTFIX -d)
else()
	set_target_properties(${PROJECT_NAME} PROPERTIES DEBUG_POSTFIX -s-d)
	set_target_properties(${PROJECT_NAME} PROPERTIES RELEASE_POSTFIX -s)
endif()

if(WIN32)
	install(TARGETS ${PROJECT_NAME}
		RUNTIME DESTINATION bin
		LIBRARY DESTINATION lib
		ARCHIVE DESTINATION lib)
else()
	install(TARGETS ${PROJECT_NAME}
		RUNTIME DESTINATION lib
		LIBRARY DESTINATION lib
		ARCHIVE DESTINATION lib)
endif()

install(DIRECTORY ${INC_DIR}
	DESTINATION .)
