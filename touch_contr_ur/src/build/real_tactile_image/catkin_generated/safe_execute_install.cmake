execute_process(COMMAND "/home/zhan/ros/touch_contr_ur/src/build/real_tactile_image/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/zhan/ros/touch_contr_ur/src/build/real_tactile_image/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
