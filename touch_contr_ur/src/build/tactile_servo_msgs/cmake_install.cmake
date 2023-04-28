# Install script for directory: /home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Debug")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tactile_servo_msgs/msg" TYPE FILE FILES
    "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/servo.msg"
    "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/Image_weiss.msg"
    "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/servo_hand.msg"
    "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/ContsFeats.msg"
    "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/OneContFeats.msg"
    "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/StiffDepthForce.msg"
    "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlanFeats.msg"
    "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/compare_eigens.msg"
    "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/CalibWeissNano.msg"
    "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/tunePid.msg"
    "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/tunePidjoint.msg"
    "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/ErrProp.msg"
    "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/COCtoZMP.msg"
    "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlab.msg"
    "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlabfarea.msg"
    "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlabfareaiscontact.msg"
    "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/PlotMatlabImg.msg"
    "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/CalibSerieselOptoforce.msg"
    "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/touch_sensor_read.msg"
    "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/AllForce.msg"
    "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/msg/AllPoints.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tactile_servo_msgs/cmake" TYPE FILE FILES "/home/zhan/ros/touch_contr_ur/src/build/tactile_servo_msgs/catkin_generated/installspace/tactile_servo_msgs-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/zhan/ros/touch_contr_ur/src/build/devel/include/tactile_servo_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/zhan/ros/touch_contr_ur/src/build/devel/share/common-lisp/ros/tactile_servo_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/zhan/ros/touch_contr_ur/src/build/devel/lib/python2.7/dist-packages/tactile_servo_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/zhan/ros/touch_contr_ur/src/build/devel/lib/python2.7/dist-packages/tactile_servo_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/zhan/ros/touch_contr_ur/src/build/tactile_servo_msgs/catkin_generated/installspace/tactile_servo_msgs.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tactile_servo_msgs/cmake" TYPE FILE FILES "/home/zhan/ros/touch_contr_ur/src/build/tactile_servo_msgs/catkin_generated/installspace/tactile_servo_msgs-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tactile_servo_msgs/cmake" TYPE FILE FILES
    "/home/zhan/ros/touch_contr_ur/src/build/tactile_servo_msgs/catkin_generated/installspace/tactile_servo_msgsConfig.cmake"
    "/home/zhan/ros/touch_contr_ur/src/build/tactile_servo_msgs/catkin_generated/installspace/tactile_servo_msgsConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tactile_servo_msgs" TYPE FILE FILES "/home/zhan/ros/touch_contr_ur/src/tactile_servo_msgs/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

