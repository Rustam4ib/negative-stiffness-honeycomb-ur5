# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "tactile_servo_srvs: 0 messages, 7 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(tactile_servo_srvs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/pose_arm_init.srv" NAME_WE)
add_custom_target(_tactile_servo_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tactile_servo_srvs" "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/pose_arm_init.srv" ""
)

get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/set_external_motion.srv" NAME_WE)
add_custom_target(_tactile_servo_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tactile_servo_srvs" "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/set_external_motion.srv" ""
)

get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/set_des_feats_srv.srv" NAME_WE)
add_custom_target(_tactile_servo_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tactile_servo_srvs" "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/set_des_feats_srv.srv" ""
)

get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/select_matrix.srv" NAME_WE)
add_custom_target(_tactile_servo_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tactile_servo_srvs" "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/select_matrix.srv" ""
)

get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/choose_configuration_singularity.srv" NAME_WE)
add_custom_target(_tactile_servo_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tactile_servo_srvs" "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/choose_configuration_singularity.srv" ""
)

get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/begin_control.srv" NAME_WE)
add_custom_target(_tactile_servo_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tactile_servo_srvs" "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/begin_control.srv" ""
)

get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/start_servo_controller.srv" NAME_WE)
add_custom_target(_tactile_servo_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tactile_servo_srvs" "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/start_servo_controller.srv" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(tactile_servo_srvs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/pose_arm_init.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_srvs
)
_generate_srv_cpp(tactile_servo_srvs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/set_external_motion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_srvs
)
_generate_srv_cpp(tactile_servo_srvs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/set_des_feats_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_srvs
)
_generate_srv_cpp(tactile_servo_srvs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/select_matrix.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_srvs
)
_generate_srv_cpp(tactile_servo_srvs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/choose_configuration_singularity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_srvs
)
_generate_srv_cpp(tactile_servo_srvs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/begin_control.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_srvs
)
_generate_srv_cpp(tactile_servo_srvs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/start_servo_controller.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_srvs
)

### Generating Module File
_generate_module_cpp(tactile_servo_srvs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_srvs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(tactile_servo_srvs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(tactile_servo_srvs_generate_messages tactile_servo_srvs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/pose_arm_init.srv" NAME_WE)
add_dependencies(tactile_servo_srvs_generate_messages_cpp _tactile_servo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/set_external_motion.srv" NAME_WE)
add_dependencies(tactile_servo_srvs_generate_messages_cpp _tactile_servo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/set_des_feats_srv.srv" NAME_WE)
add_dependencies(tactile_servo_srvs_generate_messages_cpp _tactile_servo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/select_matrix.srv" NAME_WE)
add_dependencies(tactile_servo_srvs_generate_messages_cpp _tactile_servo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/choose_configuration_singularity.srv" NAME_WE)
add_dependencies(tactile_servo_srvs_generate_messages_cpp _tactile_servo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/begin_control.srv" NAME_WE)
add_dependencies(tactile_servo_srvs_generate_messages_cpp _tactile_servo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/start_servo_controller.srv" NAME_WE)
add_dependencies(tactile_servo_srvs_generate_messages_cpp _tactile_servo_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tactile_servo_srvs_gencpp)
add_dependencies(tactile_servo_srvs_gencpp tactile_servo_srvs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tactile_servo_srvs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(tactile_servo_srvs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/pose_arm_init.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_srvs
)
_generate_srv_lisp(tactile_servo_srvs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/set_external_motion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_srvs
)
_generate_srv_lisp(tactile_servo_srvs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/set_des_feats_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_srvs
)
_generate_srv_lisp(tactile_servo_srvs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/select_matrix.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_srvs
)
_generate_srv_lisp(tactile_servo_srvs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/choose_configuration_singularity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_srvs
)
_generate_srv_lisp(tactile_servo_srvs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/begin_control.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_srvs
)
_generate_srv_lisp(tactile_servo_srvs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/start_servo_controller.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_srvs
)

### Generating Module File
_generate_module_lisp(tactile_servo_srvs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_srvs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(tactile_servo_srvs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(tactile_servo_srvs_generate_messages tactile_servo_srvs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/pose_arm_init.srv" NAME_WE)
add_dependencies(tactile_servo_srvs_generate_messages_lisp _tactile_servo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/set_external_motion.srv" NAME_WE)
add_dependencies(tactile_servo_srvs_generate_messages_lisp _tactile_servo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/set_des_feats_srv.srv" NAME_WE)
add_dependencies(tactile_servo_srvs_generate_messages_lisp _tactile_servo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/select_matrix.srv" NAME_WE)
add_dependencies(tactile_servo_srvs_generate_messages_lisp _tactile_servo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/choose_configuration_singularity.srv" NAME_WE)
add_dependencies(tactile_servo_srvs_generate_messages_lisp _tactile_servo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/begin_control.srv" NAME_WE)
add_dependencies(tactile_servo_srvs_generate_messages_lisp _tactile_servo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/start_servo_controller.srv" NAME_WE)
add_dependencies(tactile_servo_srvs_generate_messages_lisp _tactile_servo_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tactile_servo_srvs_genlisp)
add_dependencies(tactile_servo_srvs_genlisp tactile_servo_srvs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tactile_servo_srvs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(tactile_servo_srvs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/pose_arm_init.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_srvs
)
_generate_srv_py(tactile_servo_srvs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/set_external_motion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_srvs
)
_generate_srv_py(tactile_servo_srvs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/set_des_feats_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_srvs
)
_generate_srv_py(tactile_servo_srvs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/select_matrix.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_srvs
)
_generate_srv_py(tactile_servo_srvs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/choose_configuration_singularity.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_srvs
)
_generate_srv_py(tactile_servo_srvs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/begin_control.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_srvs
)
_generate_srv_py(tactile_servo_srvs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/start_servo_controller.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_srvs
)

### Generating Module File
_generate_module_py(tactile_servo_srvs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_srvs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(tactile_servo_srvs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(tactile_servo_srvs_generate_messages tactile_servo_srvs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/pose_arm_init.srv" NAME_WE)
add_dependencies(tactile_servo_srvs_generate_messages_py _tactile_servo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/set_external_motion.srv" NAME_WE)
add_dependencies(tactile_servo_srvs_generate_messages_py _tactile_servo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/set_des_feats_srv.srv" NAME_WE)
add_dependencies(tactile_servo_srvs_generate_messages_py _tactile_servo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/select_matrix.srv" NAME_WE)
add_dependencies(tactile_servo_srvs_generate_messages_py _tactile_servo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/choose_configuration_singularity.srv" NAME_WE)
add_dependencies(tactile_servo_srvs_generate_messages_py _tactile_servo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/begin_control.srv" NAME_WE)
add_dependencies(tactile_servo_srvs_generate_messages_py _tactile_servo_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_srvs/srv/start_servo_controller.srv" NAME_WE)
add_dependencies(tactile_servo_srvs_generate_messages_py _tactile_servo_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tactile_servo_srvs_genpy)
add_dependencies(tactile_servo_srvs_genpy tactile_servo_srvs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tactile_servo_srvs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_srvs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(tactile_servo_srvs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(tactile_servo_srvs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_srvs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(tactile_servo_srvs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(tactile_servo_srvs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_srvs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_srvs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_srvs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(tactile_servo_srvs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(tactile_servo_srvs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
