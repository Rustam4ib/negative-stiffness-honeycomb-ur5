# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zhan/ros/touch_contr_ur/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zhan/ros/touch_contr_ur/src/build

# Include any dependencies generated for this target.
include contact_points/CMakeFiles/contact_points_node.dir/depend.make

# Include the progress variables for this target.
include contact_points/CMakeFiles/contact_points_node.dir/progress.make

# Include the compile flags for this target's objects.
include contact_points/CMakeFiles/contact_points_node.dir/flags.make

contact_points/CMakeFiles/contact_points_node.dir/src/contact_points_node.cpp.o: contact_points/CMakeFiles/contact_points_node.dir/flags.make
contact_points/CMakeFiles/contact_points_node.dir/src/contact_points_node.cpp.o: ../contact_points/src/contact_points_node.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zhan/ros/touch_contr_ur/src/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object contact_points/CMakeFiles/contact_points_node.dir/src/contact_points_node.cpp.o"
	cd /home/zhan/ros/touch_contr_ur/src/build/contact_points && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/contact_points_node.dir/src/contact_points_node.cpp.o -c /home/zhan/ros/touch_contr_ur/src/contact_points/src/contact_points_node.cpp

contact_points/CMakeFiles/contact_points_node.dir/src/contact_points_node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/contact_points_node.dir/src/contact_points_node.cpp.i"
	cd /home/zhan/ros/touch_contr_ur/src/build/contact_points && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/zhan/ros/touch_contr_ur/src/contact_points/src/contact_points_node.cpp > CMakeFiles/contact_points_node.dir/src/contact_points_node.cpp.i

contact_points/CMakeFiles/contact_points_node.dir/src/contact_points_node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/contact_points_node.dir/src/contact_points_node.cpp.s"
	cd /home/zhan/ros/touch_contr_ur/src/build/contact_points && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/zhan/ros/touch_contr_ur/src/contact_points/src/contact_points_node.cpp -o CMakeFiles/contact_points_node.dir/src/contact_points_node.cpp.s

contact_points/CMakeFiles/contact_points_node.dir/src/contact_points_node.cpp.o.requires:
.PHONY : contact_points/CMakeFiles/contact_points_node.dir/src/contact_points_node.cpp.o.requires

contact_points/CMakeFiles/contact_points_node.dir/src/contact_points_node.cpp.o.provides: contact_points/CMakeFiles/contact_points_node.dir/src/contact_points_node.cpp.o.requires
	$(MAKE) -f contact_points/CMakeFiles/contact_points_node.dir/build.make contact_points/CMakeFiles/contact_points_node.dir/src/contact_points_node.cpp.o.provides.build
.PHONY : contact_points/CMakeFiles/contact_points_node.dir/src/contact_points_node.cpp.o.provides

contact_points/CMakeFiles/contact_points_node.dir/src/contact_points_node.cpp.o.provides.build: contact_points/CMakeFiles/contact_points_node.dir/src/contact_points_node.cpp.o

contact_points/CMakeFiles/contact_points_node.dir/src/contact_points.cpp.o: contact_points/CMakeFiles/contact_points_node.dir/flags.make
contact_points/CMakeFiles/contact_points_node.dir/src/contact_points.cpp.o: ../contact_points/src/contact_points.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/zhan/ros/touch_contr_ur/src/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object contact_points/CMakeFiles/contact_points_node.dir/src/contact_points.cpp.o"
	cd /home/zhan/ros/touch_contr_ur/src/build/contact_points && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/contact_points_node.dir/src/contact_points.cpp.o -c /home/zhan/ros/touch_contr_ur/src/contact_points/src/contact_points.cpp

contact_points/CMakeFiles/contact_points_node.dir/src/contact_points.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/contact_points_node.dir/src/contact_points.cpp.i"
	cd /home/zhan/ros/touch_contr_ur/src/build/contact_points && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/zhan/ros/touch_contr_ur/src/contact_points/src/contact_points.cpp > CMakeFiles/contact_points_node.dir/src/contact_points.cpp.i

contact_points/CMakeFiles/contact_points_node.dir/src/contact_points.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/contact_points_node.dir/src/contact_points.cpp.s"
	cd /home/zhan/ros/touch_contr_ur/src/build/contact_points && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/zhan/ros/touch_contr_ur/src/contact_points/src/contact_points.cpp -o CMakeFiles/contact_points_node.dir/src/contact_points.cpp.s

contact_points/CMakeFiles/contact_points_node.dir/src/contact_points.cpp.o.requires:
.PHONY : contact_points/CMakeFiles/contact_points_node.dir/src/contact_points.cpp.o.requires

contact_points/CMakeFiles/contact_points_node.dir/src/contact_points.cpp.o.provides: contact_points/CMakeFiles/contact_points_node.dir/src/contact_points.cpp.o.requires
	$(MAKE) -f contact_points/CMakeFiles/contact_points_node.dir/build.make contact_points/CMakeFiles/contact_points_node.dir/src/contact_points.cpp.o.provides.build
.PHONY : contact_points/CMakeFiles/contact_points_node.dir/src/contact_points.cpp.o.provides

contact_points/CMakeFiles/contact_points_node.dir/src/contact_points.cpp.o.provides.build: contact_points/CMakeFiles/contact_points_node.dir/src/contact_points.cpp.o

# Object files for target contact_points_node
contact_points_node_OBJECTS = \
"CMakeFiles/contact_points_node.dir/src/contact_points_node.cpp.o" \
"CMakeFiles/contact_points_node.dir/src/contact_points.cpp.o"

# External object files for target contact_points_node
contact_points_node_EXTERNAL_OBJECTS =

devel/lib/contact_points/contact_points_node: contact_points/CMakeFiles/contact_points_node.dir/src/contact_points_node.cpp.o
devel/lib/contact_points/contact_points_node: contact_points/CMakeFiles/contact_points_node.dir/src/contact_points.cpp.o
devel/lib/contact_points/contact_points_node: contact_points/CMakeFiles/contact_points_node.dir/build.make
devel/lib/contact_points/contact_points_node: /opt/ros/indigo/lib/libcv_bridge.so
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
devel/lib/contact_points/contact_points_node: /opt/ros/indigo/lib/libimage_transport.so
devel/lib/contact_points/contact_points_node: /opt/ros/indigo/lib/libpcl_ros_filters.so
devel/lib/contact_points/contact_points_node: /opt/ros/indigo/lib/libpcl_ros_io.so
devel/lib/contact_points/contact_points_node: /opt/ros/indigo/lib/libpcl_ros_tf.so
devel/lib/contact_points/contact_points_node: /usr/lib/libpcl_common.so
devel/lib/contact_points/contact_points_node: /usr/lib/libpcl_octree.so
devel/lib/contact_points/contact_points_node: /usr/lib/libpcl_io.so
devel/lib/contact_points/contact_points_node: /usr/lib/libpcl_kdtree.so
devel/lib/contact_points/contact_points_node: /usr/lib/libpcl_search.so
devel/lib/contact_points/contact_points_node: /usr/lib/libpcl_sample_consensus.so
devel/lib/contact_points/contact_points_node: /usr/lib/libpcl_filters.so
devel/lib/contact_points/contact_points_node: /usr/lib/libpcl_features.so
devel/lib/contact_points/contact_points_node: /usr/lib/libpcl_keypoints.so
devel/lib/contact_points/contact_points_node: /usr/lib/libpcl_segmentation.so
devel/lib/contact_points/contact_points_node: /usr/lib/libpcl_visualization.so
devel/lib/contact_points/contact_points_node: /usr/lib/libpcl_outofcore.so
devel/lib/contact_points/contact_points_node: /usr/lib/libpcl_registration.so
devel/lib/contact_points/contact_points_node: /usr/lib/libpcl_recognition.so
devel/lib/contact_points/contact_points_node: /usr/lib/libpcl_surface.so
devel/lib/contact_points/contact_points_node: /usr/lib/libpcl_people.so
devel/lib/contact_points/contact_points_node: /usr/lib/libpcl_tracking.so
devel/lib/contact_points/contact_points_node: /usr/lib/libpcl_apps.so
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libqhull.so
devel/lib/contact_points/contact_points_node: /usr/lib/libOpenNI.so
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libflann_cpp_s.a
devel/lib/contact_points/contact_points_node: /usr/lib/libvtkCommon.so.5.8.0
devel/lib/contact_points/contact_points_node: /usr/lib/libvtkRendering.so.5.8.0
devel/lib/contact_points/contact_points_node: /usr/lib/libvtkHybrid.so.5.8.0
devel/lib/contact_points/contact_points_node: /usr/lib/libvtkCharts.so.5.8.0
devel/lib/contact_points/contact_points_node: /opt/ros/indigo/lib/libdynamic_reconfigure_config_init_mutex.so
devel/lib/contact_points/contact_points_node: /opt/ros/indigo/lib/libnodeletlib.so
devel/lib/contact_points/contact_points_node: /opt/ros/indigo/lib/libbondcpp.so
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libuuid.so
devel/lib/contact_points/contact_points_node: /opt/ros/indigo/lib/libclass_loader.so
devel/lib/contact_points/contact_points_node: /usr/lib/libPocoFoundation.so
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libdl.so
devel/lib/contact_points/contact_points_node: /opt/ros/indigo/lib/librosbag.so
devel/lib/contact_points/contact_points_node: /opt/ros/indigo/lib/librosbag_storage.so
devel/lib/contact_points/contact_points_node: /opt/ros/indigo/lib/libroslz4.so
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/liblz4.so
devel/lib/contact_points/contact_points_node: /opt/ros/indigo/lib/libtopic_tools.so
devel/lib/contact_points/contact_points_node: /opt/ros/indigo/lib/libtf.so
devel/lib/contact_points/contact_points_node: /opt/ros/indigo/lib/libtf2_ros.so
devel/lib/contact_points/contact_points_node: /opt/ros/indigo/lib/libactionlib.so
devel/lib/contact_points/contact_points_node: /opt/ros/indigo/lib/libmessage_filters.so
devel/lib/contact_points/contact_points_node: /opt/ros/indigo/lib/libtf2.so
devel/lib/contact_points/contact_points_node: /opt/ros/indigo/lib/libroscpp.so
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libboost_signals.so
devel/lib/contact_points/contact_points_node: /opt/ros/indigo/lib/librosconsole.so
devel/lib/contact_points/contact_points_node: /opt/ros/indigo/lib/librosconsole_log4cxx.so
devel/lib/contact_points/contact_points_node: /opt/ros/indigo/lib/librosconsole_backend_interface.so
devel/lib/contact_points/contact_points_node: /usr/lib/liblog4cxx.so
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libboost_regex.so
devel/lib/contact_points/contact_points_node: /opt/ros/indigo/lib/libxmlrpcpp.so
devel/lib/contact_points/contact_points_node: /opt/ros/indigo/lib/libroslib.so
devel/lib/contact_points/contact_points_node: /opt/ros/indigo/lib/librospack.so
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libpython2.7.so
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libtinyxml.so
devel/lib/contact_points/contact_points_node: /opt/ros/indigo/lib/libroscpp_serialization.so
devel/lib/contact_points/contact_points_node: /opt/ros/indigo/lib/librostime.so
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
devel/lib/contact_points/contact_points_node: /opt/ros/indigo/lib/libcpp_common.so
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libboost_system.so
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libboost_thread.so
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libpthread.so
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
devel/lib/contact_points/contact_points_node: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
devel/lib/contact_points/contact_points_node: contact_points/CMakeFiles/contact_points_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../devel/lib/contact_points/contact_points_node"
	cd /home/zhan/ros/touch_contr_ur/src/build/contact_points && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/contact_points_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
contact_points/CMakeFiles/contact_points_node.dir/build: devel/lib/contact_points/contact_points_node
.PHONY : contact_points/CMakeFiles/contact_points_node.dir/build

contact_points/CMakeFiles/contact_points_node.dir/requires: contact_points/CMakeFiles/contact_points_node.dir/src/contact_points_node.cpp.o.requires
contact_points/CMakeFiles/contact_points_node.dir/requires: contact_points/CMakeFiles/contact_points_node.dir/src/contact_points.cpp.o.requires
.PHONY : contact_points/CMakeFiles/contact_points_node.dir/requires

contact_points/CMakeFiles/contact_points_node.dir/clean:
	cd /home/zhan/ros/touch_contr_ur/src/build/contact_points && $(CMAKE_COMMAND) -P CMakeFiles/contact_points_node.dir/cmake_clean.cmake
.PHONY : contact_points/CMakeFiles/contact_points_node.dir/clean

contact_points/CMakeFiles/contact_points_node.dir/depend:
	cd /home/zhan/ros/touch_contr_ur/src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zhan/ros/touch_contr_ur/src /home/zhan/ros/touch_contr_ur/src/contact_points /home/zhan/ros/touch_contr_ur/src/build /home/zhan/ros/touch_contr_ur/src/build/contact_points /home/zhan/ros/touch_contr_ur/src/build/contact_points/CMakeFiles/contact_points_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contact_points/CMakeFiles/contact_points_node.dir/depend

