# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "tactile_servo_msgs: 21 messages, 0 services")

set(MSG_I_FLAGS "-Itactile_servo_msgs:/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(tactile_servo_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/ContsFeats.msg" NAME_WE)
add_custom_target(_tactile_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tactile_servo_msgs" "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/ContsFeats.msg" "tactile_servo_msgs/OneContFeats:std_msgs/Header"
)

get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/OneContFeats.msg" NAME_WE)
add_custom_target(_tactile_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tactile_servo_msgs" "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/OneContFeats.msg" ""
)

get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/Image_weiss.msg" NAME_WE)
add_custom_target(_tactile_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tactile_servo_msgs" "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/Image_weiss.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/servo_hand.msg" NAME_WE)
add_custom_target(_tactile_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tactile_servo_msgs" "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/servo_hand.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/CalibSerieselOptoforce.msg" NAME_WE)
add_custom_target(_tactile_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tactile_servo_msgs" "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/CalibSerieselOptoforce.msg" "geometry_msgs/Vector3:geometry_msgs/Wrench:std_msgs/Header"
)

get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlanFeats.msg" NAME_WE)
add_custom_target(_tactile_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tactile_servo_msgs" "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlanFeats.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/CalibWeissNano.msg" NAME_WE)
add_custom_target(_tactile_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tactile_servo_msgs" "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/CalibWeissNano.msg" "geometry_msgs/Vector3:geometry_msgs/Wrench:std_msgs/Header"
)

get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/StiffDepthForce.msg" NAME_WE)
add_custom_target(_tactile_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tactile_servo_msgs" "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/StiffDepthForce.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/compare_eigens.msg" NAME_WE)
add_custom_target(_tactile_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tactile_servo_msgs" "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/compare_eigens.msg" ""
)

get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/AllForce.msg" NAME_WE)
add_custom_target(_tactile_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tactile_servo_msgs" "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/AllForce.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/tunePid.msg" NAME_WE)
add_custom_target(_tactile_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tactile_servo_msgs" "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/tunePid.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/touch_sensor_read.msg" NAME_WE)
add_custom_target(_tactile_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tactile_servo_msgs" "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/touch_sensor_read.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/COCtoZMP.msg" NAME_WE)
add_custom_target(_tactile_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tactile_servo_msgs" "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/COCtoZMP.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/ErrProp.msg" NAME_WE)
add_custom_target(_tactile_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tactile_servo_msgs" "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/ErrProp.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlabfarea.msg" NAME_WE)
add_custom_target(_tactile_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tactile_servo_msgs" "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlabfarea.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlab.msg" NAME_WE)
add_custom_target(_tactile_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tactile_servo_msgs" "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlab.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/servo.msg" NAME_WE)
add_custom_target(_tactile_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tactile_servo_msgs" "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/servo.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/AllPoints.msg" NAME_WE)
add_custom_target(_tactile_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tactile_servo_msgs" "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/AllPoints.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlabImg.msg" NAME_WE)
add_custom_target(_tactile_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tactile_servo_msgs" "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlabImg.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlabfareaiscontact.msg" NAME_WE)
add_custom_target(_tactile_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tactile_servo_msgs" "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlabfareaiscontact.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/tunePidjoint.msg" NAME_WE)
add_custom_target(_tactile_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tactile_servo_msgs" "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/tunePidjoint.msg" "std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/tunePid.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_cpp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/OneContFeats.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_cpp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/Image_weiss.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_cpp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/CalibSerieselOptoforce.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_cpp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/COCtoZMP.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_cpp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/CalibWeissNano.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_cpp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/touch_sensor_read.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_cpp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/StiffDepthForce.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_cpp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/compare_eigens.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_cpp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/AllForce.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_cpp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/ContsFeats.msg"
  "${MSG_I_FLAGS}"
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/OneContFeats.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_cpp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/ErrProp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_cpp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/servo_hand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_cpp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlabfarea.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_cpp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlab.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_cpp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/servo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_cpp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/AllPoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_cpp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlanFeats.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_cpp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlabImg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_cpp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlabfareaiscontact.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_cpp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/tunePidjoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(tactile_servo_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(tactile_servo_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(tactile_servo_msgs_generate_messages tactile_servo_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/ContsFeats.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_cpp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/OneContFeats.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_cpp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/Image_weiss.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_cpp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/servo_hand.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_cpp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/CalibSerieselOptoforce.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_cpp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlanFeats.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_cpp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/CalibWeissNano.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_cpp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/StiffDepthForce.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_cpp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/compare_eigens.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_cpp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/AllForce.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_cpp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/tunePid.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_cpp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/touch_sensor_read.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_cpp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/COCtoZMP.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_cpp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/ErrProp.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_cpp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlabfarea.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_cpp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlab.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_cpp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/servo.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_cpp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/AllPoints.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_cpp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlabImg.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_cpp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlabfareaiscontact.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_cpp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/tunePidjoint.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_cpp _tactile_servo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tactile_servo_msgs_gencpp)
add_dependencies(tactile_servo_msgs_gencpp tactile_servo_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tactile_servo_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/tunePid.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_lisp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/OneContFeats.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_lisp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/Image_weiss.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_lisp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/CalibSerieselOptoforce.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_lisp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/COCtoZMP.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_lisp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/CalibWeissNano.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_lisp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/touch_sensor_read.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_lisp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/StiffDepthForce.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_lisp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/compare_eigens.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_lisp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/AllForce.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_lisp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/ContsFeats.msg"
  "${MSG_I_FLAGS}"
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/OneContFeats.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_lisp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/ErrProp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_lisp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/servo_hand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_lisp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlabfarea.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_lisp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlab.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_lisp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/servo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_lisp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/AllPoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_lisp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlanFeats.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_lisp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlabImg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_lisp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlabfareaiscontact.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_lisp(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/tunePidjoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(tactile_servo_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(tactile_servo_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(tactile_servo_msgs_generate_messages tactile_servo_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/ContsFeats.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_lisp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/OneContFeats.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_lisp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/Image_weiss.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_lisp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/servo_hand.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_lisp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/CalibSerieselOptoforce.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_lisp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlanFeats.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_lisp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/CalibWeissNano.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_lisp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/StiffDepthForce.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_lisp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/compare_eigens.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_lisp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/AllForce.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_lisp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/tunePid.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_lisp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/touch_sensor_read.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_lisp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/COCtoZMP.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_lisp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/ErrProp.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_lisp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlabfarea.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_lisp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlab.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_lisp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/servo.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_lisp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/AllPoints.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_lisp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlabImg.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_lisp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlabfareaiscontact.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_lisp _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/tunePidjoint.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_lisp _tactile_servo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tactile_servo_msgs_genlisp)
add_dependencies(tactile_servo_msgs_genlisp tactile_servo_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tactile_servo_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/tunePid.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_py(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/OneContFeats.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_py(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/Image_weiss.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_py(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/CalibSerieselOptoforce.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_py(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/COCtoZMP.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_py(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/CalibWeissNano.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_py(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/touch_sensor_read.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_py(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/StiffDepthForce.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_py(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/compare_eigens.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_py(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/AllForce.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_py(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/ContsFeats.msg"
  "${MSG_I_FLAGS}"
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/OneContFeats.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_py(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/ErrProp.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_py(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/servo_hand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_py(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlabfarea.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_py(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlab.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_py(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/servo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_py(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/AllPoints.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_py(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlanFeats.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_py(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlabImg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_py(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlabfareaiscontact.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_msgs
)
_generate_msg_py(tactile_servo_msgs
  "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/tunePidjoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(tactile_servo_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(tactile_servo_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(tactile_servo_msgs_generate_messages tactile_servo_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/ContsFeats.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_py _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/OneContFeats.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_py _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/Image_weiss.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_py _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/servo_hand.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_py _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/CalibSerieselOptoforce.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_py _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlanFeats.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_py _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/CalibWeissNano.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_py _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/StiffDepthForce.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_py _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/compare_eigens.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_py _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/AllForce.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_py _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/tunePid.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_py _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/touch_sensor_read.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_py _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/COCtoZMP.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_py _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/ErrProp.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_py _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlabfarea.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_py _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlab.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_py _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/servo.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_py _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/AllPoints.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_py _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlabImg.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_py _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlabfareaiscontact.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_py _tactile_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/tunePidjoint.msg" NAME_WE)
add_dependencies(tactile_servo_msgs_generate_messages_py _tactile_servo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tactile_servo_msgs_genpy)
add_dependencies(tactile_servo_msgs_genpy tactile_servo_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tactile_servo_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tactile_servo_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(tactile_servo_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(tactile_servo_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tactile_servo_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(tactile_servo_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(tactile_servo_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tactile_servo_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(tactile_servo_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(tactile_servo_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
