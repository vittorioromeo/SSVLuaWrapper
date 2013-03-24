# -*- cmake -*-

# - Find SSVLuaWrapper
# Find the SSVLuaWrapper includes and library
# This module defines
# SSVLUAWRAPPER_INCLUDE_DIR, where to find SSVLuaWrapper headers.
# SSVLUAWRAPPER_LIBRARIES, the libraries needed to use SSVLuaWrapper.
# SSVLUAWRAPPER_FOUND, If false, do not try to use SSVLuaWrapper.
# also defined, but not for general use are
# SSVLUAWRAPPER_LIBRARY, where to find the SSVLuaWrapper library.

FIND_PATH(SSVLUAWRAPPER_INCLUDE_DIR
  NAMES SSVLuaWrapper/SSVLuaWrapper.h
  PATH_SUFFIXES include/
  PATHS "${PROJECT_SOURCE_DIR}/../SSVLuaWrapper/"
  "${PROJECT_SOURCE_DIR}/extlibs/SSVLuaWrapper/"
  ${SSVLUAWRAPPER_ROOT}
  $ENV{SSVLUAWRAPPER_ROOT}
  /usr/local/
  /usr/
  /sw/         # Fink
  /opt/local/  # DarwinPorts
  /opt/csw/    # Blastwave
  /opt/
)

message("\nFound SSVLuaWrapper include at: ${SSVLUAWRAPPER_INCLUDE_DIR}.\n")

FIND_LIBRARY(SSVLUAWRAPPER_LIBRARY
  NAMES SSVLuaWrapper libSSVLuaWrapper SSVLuaWrapper-s libSSVLuaWrapper-s ssvluawrapper libssvluawrapper ssvluawrapper-s libssvluawrapper-s
  PATH_SUFFIXES lib/ lib64/
  PATHS "${PROJECT_SOURCE_DIR}/../SSVLuaWrapper/"
  "${PROJECT_SOURCE_DIR}/extlibs/SSVLuaWrapper/"
  ${SSVLUAWRAPPER_ROOT}
  $ENV{SSVLUAWRAPPER_ROOT}
  /usr/local/
  /usr/
  /sw/         # Fink
  /opt/local/  # DarwinPorts
  /opt/csw/    # Blastwave
  /opt/
)

message("\nFound SSVLuaWrapper library at: ${SSVLUAWRAPPER_LIBRARY}.\n")

IF (SSVLUAWRAPPER_LIBRARY AND SSVLUAWRAPPER_INCLUDE_DIR)
    SET(SSVLUAWRAPPER_LIBRARIES ${SSVLUAWRAPPER_LIBRARY})
    SET(SSVLUAWRAPPER_FOUND TRUE)
ELSE (SSVLUAWRAPPER_LIBRARY AND SSVLUAWRAPPER_INCLUDE_DIR)
    SET(SSVLUAWRAPPER_FOUND FALSE)
ENDIF (SSVLUAWRAPPER_LIBRARY AND SSVLUAWRAPPER_INCLUDE_DIR)

IF (SSVLUAWRAPPER_FOUND)
      MESSAGE(STATUS "Found SSVLuaWrapper in ${SSVLUAWRAPPER_INCLUDE_DIR}")
ELSE (SSVLUAWRAPPER_FOUND)
   IF (SSVLUAWRAPPER_FIND_REQUIRED)
      MESSAGE(FATAL_ERROR "Could not find SSVLuaWrapper library")
   ENDIF (SSVLUAWRAPPER_FIND_REQUIRED)
ENDIF (SSVLUAWRAPPER_FOUND)

MARK_AS_ADVANCED(
  SSVLUAWRAPPER_LIBRARY
  SSVLUAWRAPPER_INCLUDE_DIR
)
