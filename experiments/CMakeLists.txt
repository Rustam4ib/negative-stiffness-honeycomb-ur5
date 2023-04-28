cmake_minimum_required(VERSION 2.8.3)
project(experiments)

add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  cmake_modules
  cv_bridge
  image_transport
  roscpp
  roslib
  sensor_msgs
  std_msgs

  geometry_msgs

  trajectory_msgs
  tactile_servo_msgs

  tf
  moveit_core
  moveit_ros_planning_interface


  rosbag
  my_msgs
  rosserial_arduino
  wittenstein_msgs
  dynamixel_sdk
  dynamixel_sdk_examples
)
find_package(OpenCV REQUIRED)
find_package(Eigen3 REQUIRED)
include_directories(${EIGEN3_INCLUDE_DIR})
## System dependencies are found with CMake's conventions
# find_package(Boost REQUIRED COMPONENTS system)


###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## INCLUDE_DIRS: uncomment this if you package contains header files
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
 INCLUDE_DIRS include
 LIBRARIES ${PROJECT_NAME}
 CATKIN_DEPENDS cmake_modules cv_bridge
 image_transport roscpp roslib sensor_msgs std_msgs geometry_msgs my_msgs rosserial_arduino wittenstein_msgs dynamixel_sdk dynamixel_sdk_examples visualization_msgs
#  DEPENDS system_lib
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
# include_directories(include)
include_directories(
  ${catkin_INCLUDE_DIRS} ${OpenCV_INCLUDE_DIRS}
  include
)


 add_executable(broadcast_desired_pose_rgb_normal_shear_torsion_rustam src/broadcast_desired_pose_rgb_normal_shear_torsion_rustam.cpp)
 add_dependencies(broadcast_desired_pose_rgb_normal_shear_torsion_rustam ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

 target_link_libraries(broadcast_desired_pose_rgb_normal_shear_torsion_rustam
   ${catkin_LIBRARIES}
 )

 add_executable(ur5_nsh_experiment src/ur5_nsh_experiment.cpp)
 add_dependencies(ur5_nsh_experiment ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
 target_link_libraries(ur5_nsh_experiment
   ${catkin_LIBRARIES}
 )
 add_executable(ur5_nsh_quasi_static_horizontal src/ur5_nsh_quasi_static_horizontal.cpp)
 add_dependencies(ur5_nsh_quasi_static_horizontal ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
 target_link_libraries(ur5_nsh_quasi_static_horizontal
   ${catkin_LIBRARIES}
 )
 add_executable(velcontrol src/velcontrol.cpp)
 add_dependencies(velcontrol ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
 target_link_libraries(velcontrol
   ${catkin_LIBRARIES}
 )
 add_executable(light_touch src/light_touch.cpp)
 add_dependencies(light_touch ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
 target_link_libraries(light_touch
   ${catkin_LIBRARIES}
 )
 add_executable(myrosbag src/myrosbag.cpp)
 add_dependencies(myrosbag ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
 target_link_libraries(myrosbag
   ${catkin_LIBRARIES}
 )
 add_executable(pendulum src/pendulum.cpp)
 add_dependencies(pendulum ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
 target_link_libraries(pendulum
   ${catkin_LIBRARIES}
 )

 