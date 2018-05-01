## ----------------------------------------------------------------------------
## Author : Pierre Esterie
## This is free folks !
## ----------------------------------------------------------------------------
cmake_minimum_required(VERSION 3.7)

project(no-brainer)
include(cmake/executable.cmake)

## Adding dependencies to the project
find_package(Boost)

## Updating include path with dependencies
if(Boost_FOUND)
  set(NOBRAINER_INCLUDES ${Boost_INCLUDE_DIRS})
endif()

# Here add the pass to wiringPi headers and librarie


## Adding project include dirs
set(NOBRAINER_INCLUDES ${PROJECT_SOURCE_DIR}/include)

include_directories(${NOBRAINER_INCLUDES})

message("${NOBRAINER_INCLUDES}")

## Adding sources directories
add_subdirectory(sandbox)
