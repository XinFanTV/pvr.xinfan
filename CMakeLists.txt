project(pvr.xinfan)

cmake_minimum_required(VERSION 2.6)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${PROJECT_SOURCE_DIR})

enable_language(CXX)

find_package(kodi REQUIRED)
find_package(kodiplatform REQUIRED)
find_package(platform REQUIRED)

include_directories(${kodiplatform_INCLUDE_DIRS}
                    ${platform_INCLUDE_DIRS}
                    ${KODI_INCLUDE_DIR})

set(DEPLIBS ${kodiplatform_LIBRARIES}
            ${platform_LIBRARIES})

set(PVRXINFAN_SOURCES src/client.cpp
                    src/PVRXinFanData.cpp)

build_addon(pvr.xinfan PVRXINFAN DEPLIBS)

include(CPack)
