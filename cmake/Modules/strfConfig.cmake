INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_STRF strf)

FIND_PATH(
    STRF_INCLUDE_DIRS
    NAMES strf/api.h
    HINTS $ENV{STRF_DIR}/include
        ${PC_STRF_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    STRF_LIBRARIES
    NAMES gnuradio-strf
    HINTS $ENV{STRF_DIR}/lib
        ${PC_STRF_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(STRF DEFAULT_MSG STRF_LIBRARIES STRF_INCLUDE_DIRS)
MARK_AS_ADVANCED(STRF_LIBRARIES STRF_INCLUDE_DIRS)

