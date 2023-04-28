cmake_minimum_required(VERSION 2.8.3)
project(real_tactile_image)


find_package(catkin REQUIRED COMPONENTS
  rospy
  sensor_msgs
  std_msgs
)

catkin_package(
    DEPENDS
    CATKIN_DEPENDS rospy
    INCLUDE_DIRS
    LIBRARIES
)

catkin_python_setup()
###########
## Build ##
###########

include_directories( ${catkin_INCLUDE_DIRS} )