# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(tactile_image_CONFIG_INCLUDED)
  return()
endif()
set(tactile_image_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("TRUE" STREQUAL "TRUE")
  set(tactile_image_SOURCE_PREFIX /home/zhan/ros/touch_contr_ur/src/tactile_image)
  set(tactile_image_DEVEL_PREFIX /home/zhan/ros/touch_contr_ur/src/build/devel)
  set(tactile_image_INSTALL_PREFIX "")
  set(tactile_image_PREFIX ${tactile_image_DEVEL_PREFIX})
else()
  set(tactile_image_SOURCE_PREFIX "")
  set(tactile_image_DEVEL_PREFIX "")
  set(tactile_image_INSTALL_PREFIX /usr/local)
  set(tactile_image_PREFIX ${tactile_image_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'tactile_image' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(tactile_image_FOUND_CATKIN_PROJECT TRUE)

if(NOT "/home/zhan/ros/touch_contr_ur/src/tactile_image/include " STREQUAL " ")
  set(tactile_image_INCLUDE_DIRS "")
  set(_include_dirs "/home/zhan/ros/touch_contr_ur/src/tactile_image/include")
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${tactile_image_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'tactile_image' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  Ask the maintainer 'zhan <zhan@todo.todo>' to fix it.")
      endif()
    else()
      message(FATAL_ERROR "Project 'tactile_image' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '/home/zhan/ros/touch_contr_ur/src/tactile_image/${idir}'.  Ask the maintainer 'zhan <zhan@todo.todo>' to fix it.")
    endif()
    _list_append_unique(tactile_image_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "tactile_image")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND tactile_image_LIBRARIES ${library})
  elseif(TARGET ${library})
    list(APPEND tactile_image_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND tactile_image_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/zhan/ros/touch_contr_ur/src/build/devel/lib;/home/zhan/ros/rgb_sensor/devel/lib;/home/zhan/ros/touch_contr_ur/devel/lib;/home/zhan/ros/modern_driver_ur/devel/lib;/home/zhan/ros/ur/devel/lib;/home/zhan/ros/moveit/devel/lib;/opt/ros/indigo/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(tactile_image_LIBRARY_DIRS ${lib_path})
      list(APPEND tactile_image_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'tactile_image'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND tactile_image_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(tactile_image_EXPORTED_TARGETS "")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${tactile_image_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "cmake_modules;cv_bridge;dynamic_reconfigure;image_transport;roscpp;roslib;sensor_msgs;std_msgs;tactile_servo_msgs")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 tactile_image_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${tactile_image_dep}_FOUND)
      find_package(${tactile_image_dep} REQUIRED)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${tactile_image_dep} REQUIRED ${depend_list})
  endif()
  _list_append_unique(tactile_image_INCLUDE_DIRS ${${tactile_image_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(tactile_image_LIBRARIES ${tactile_image_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${tactile_image_dep}_LIBRARIES})
  _list_append_deduplicate(tactile_image_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(tactile_image_LIBRARIES ${tactile_image_LIBRARIES})

  _list_append_unique(tactile_image_LIBRARY_DIRS ${${tactile_image_dep}_LIBRARY_DIRS})
  list(APPEND tactile_image_EXPORTED_TARGETS ${${tactile_image_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${tactile_image_DIR}/${extra})
  endif()
  include(${extra})
endforeach()
