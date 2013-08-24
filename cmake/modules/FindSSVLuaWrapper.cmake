FIND_PATH(SSVLUAWRAPPER_INCLUDE_DIR
  NAMES SSVLuaWrapper/SSVLuaWrapper.h
  PATH_SUFFIXES include/
  PATHS "${PROJECT_SOURCE_DIR}/../SSVLuaWrapper/"
  "${PROJECT_SOURCE_DIR}/extlibs/SSVLuaWrapper/"
  ${SSVLUAWRAPPER_ROOT}
  $ENV{SSVLUAWRAPPER_ROOT}
  /usr/local/
  /usr/
  /sw/       
  /opt/local/
  /opt/csw/  
  /opt/
)

message("\nFound SSVLuaWrapper include at: ${SSVLUAWRAPPER_INCLUDE_DIR}.\n")

IF(SSVLUAWRAPPER_INCLUDE_DIR)
  SET(SSVLUAWRAPPER_FOUND TRUE)
ELSE(SSVLUAWRAPPER_INCLUDE_DIR)
  SET(SSVLUAWRAPPER_FOUND FALSE)
ENDIF(SSVLUAWRAPPER_INCLUDE_DIR)

IF(SSVLUAWRAPPER_FOUND)
  MESSAGE(STATUS "Found SSVLuaWrapper in ${SSVLUAWRAPPER_INCLUDE_DIR}")
ELSE(SSVLUAWRAPPER_FOUND)
  IF(SSVLUAWRAPPER_FIND_REQUIRED)
    MESSAGE(FATAL_ERROR "Could not find SSVLuaWrapper library")
  ENDIF(SSVLUAWRAPPER_FIND_REQUIRED)
ENDIF(SSVLUAWRAPPER_FOUND)

MARK_AS_ADVANCED(
  SSVLUAWRAPPER_INCLUDE_DIR
)
