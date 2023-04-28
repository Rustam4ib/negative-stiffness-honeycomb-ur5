cmake_minimum_required(VERSION 2.8.3)
project(move_ur_sim)
## Compile as C++11, supported in ROS Kinetic and newer
add_compile_options(-std=c++11)
## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  roscpp
  trajectory_msgs
  geometry_msgs
  sensor_msgs
  tf
  moveit_core
  moveit_ros_planning_interface
  tactile_servo_msgs
)
find_package(Eigen3 REQUIRED)
include_directories(${EIGEN3_INCLUDE_DIR})

#catkin_python_setup()


###################################
## catkin specific configuration ##
###################################
catkin_package(
    CATKIN_DEPENDS 
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)


 add_executable(init_experiment_node src/init_experiment.cpp)

 add_dependencies(init_experiment_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
 
 target_link_libraries(init_experiment_node
   ${catkin_LIBRARIES}
 )
 
 add_executable(init_pose_before_any_servo src/init_pose_before_any_servo.cpp)

 add_dependencies(init_pose_before_any_servo ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
 
 target_link_libraries(init_pose_before_any_servo
   ${catkin_LIBRARIES}
 )
 
 add_executable(broadcast_desired_pose_move src/broadcast_desired_pose_move.cpp)

 add_dependencies(broadcast_desired_pose_move ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
 
 target_link_libraries(broadcast_desired_pose_move
   ${catkin_LIBRARIES}
 )
 
 add_executable(desired_velocities_node src/desired_velocities.cpp)

 add_dependencies(desired_velocities_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
 
 target_link_libraries(desired_velocities_node
   ${catkin_LIBRARIES}
 )
 
   add_executable(crosstalk_find src/crosstalk_find.cpp)

 add_dependencies(crosstalk_find ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
 
 target_link_libraries(crosstalk_find
   ${catkin_LIBRARIES}
 )
#############
## Install ##
#############


#############
## Testing ##
#############
