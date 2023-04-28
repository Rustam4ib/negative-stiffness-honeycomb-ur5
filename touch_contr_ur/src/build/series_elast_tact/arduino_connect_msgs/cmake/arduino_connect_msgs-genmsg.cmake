# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "arduino_connect_msgs: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iarduino_connect_msgs:/home/zhan/ros/touch_contr_ur/src/series_elast_tact/arduino_connect_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(arduino_connect_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/series_elast_tact/arduino_connect_msgs/msg/ser_el_sensor_read.msg" NAME_WE)
add_custom_target(_arduino_connect_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "arduino_connect_msgs" "/home/zhan/ros/touch_contr_ur/src/series_elast_tact/arduino_connect_msgs/msg/ser_el_sensor_read.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(arduino_connect_msgs
  "/home/zhan/ros/touch_contr_ur/src/series_elast_tact/arduino_connect_msgs/msg/ser_el_sensor_read.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arduino_connect_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(arduino_connect_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arduino_connect_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(arduino_connect_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(arduino_connect_msgs_generate_messages arduino_connect_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/series_elast_tact/arduino_connect_msgs/msg/ser_el_sensor_read.msg" NAME_WE)
add_dependencies(arduino_connect_msgs_generate_messages_cpp _arduino_connect_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arduino_connect_msgs_gencpp)
add_dependencies(arduino_connect_msgs_gencpp arduino_connect_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arduino_connect_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(arduino_connect_msgs
  "/home/zhan/ros/touch_contr_ur/src/series_elast_tact/arduino_connect_msgs/msg/ser_el_sensor_read.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arduino_connect_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(arduino_connect_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arduino_connect_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(arduino_connect_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(arduino_connect_msgs_generate_messages arduino_connect_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/series_elast_tact/arduino_connect_msgs/msg/ser_el_sensor_read.msg" NAME_WE)
add_dependencies(arduino_connect_msgs_generate_messages_lisp _arduino_connect_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arduino_connect_msgs_genlisp)
add_dependencies(arduino_connect_msgs_genlisp arduino_connect_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arduino_connect_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(arduino_connect_msgs
  "/home/zhan/ros/touch_contr_ur/src/series_elast_tact/arduino_connect_msgs/msg/ser_el_sensor_read.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arduino_connect_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(arduino_connect_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arduino_connect_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(arduino_connect_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(arduino_connect_msgs_generate_messages arduino_connect_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/series_elast_tact/arduino_connect_msgs/msg/ser_el_sensor_read.msg" NAME_WE)
add_dependencies(arduino_connect_msgs_generate_messages_py _arduino_connect_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(arduino_connect_msgs_genpy)
add_dependencies(arduino_connect_msgs_genpy arduino_connect_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS arduino_connect_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arduino_connect_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/arduino_connect_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(arduino_connect_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(arduino_connect_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arduino_connect_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/arduino_connect_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(arduino_connect_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(arduino_connect_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arduino_connect_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arduino_connect_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/arduino_connect_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(arduino_connect_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(arduino_connect_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
