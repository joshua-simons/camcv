# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = /home/developer/pidev/camcv/opencv-2.4.10

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/developer/pidev/camcv/opencv-2.4.10/build

# Include any dependencies generated for this target.
include samples/c/CMakeFiles/example_blobtrack_sample.dir/depend.make

# Include the progress variables for this target.
include samples/c/CMakeFiles/example_blobtrack_sample.dir/progress.make

# Include the compile flags for this target's objects.
include samples/c/CMakeFiles/example_blobtrack_sample.dir/flags.make

samples/c/CMakeFiles/example_blobtrack_sample.dir/blobtrack_sample.cpp.o: samples/c/CMakeFiles/example_blobtrack_sample.dir/flags.make
samples/c/CMakeFiles/example_blobtrack_sample.dir/blobtrack_sample.cpp.o: ../samples/c/blobtrack_sample.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/developer/pidev/camcv/opencv-2.4.10/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object samples/c/CMakeFiles/example_blobtrack_sample.dir/blobtrack_sample.cpp.o"
	cd /home/developer/pidev/camcv/opencv-2.4.10/build/samples/c && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example_blobtrack_sample.dir/blobtrack_sample.cpp.o -c /home/developer/pidev/camcv/opencv-2.4.10/samples/c/blobtrack_sample.cpp

samples/c/CMakeFiles/example_blobtrack_sample.dir/blobtrack_sample.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_blobtrack_sample.dir/blobtrack_sample.cpp.i"
	cd /home/developer/pidev/camcv/opencv-2.4.10/build/samples/c && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/developer/pidev/camcv/opencv-2.4.10/samples/c/blobtrack_sample.cpp > CMakeFiles/example_blobtrack_sample.dir/blobtrack_sample.cpp.i

samples/c/CMakeFiles/example_blobtrack_sample.dir/blobtrack_sample.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_blobtrack_sample.dir/blobtrack_sample.cpp.s"
	cd /home/developer/pidev/camcv/opencv-2.4.10/build/samples/c && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/developer/pidev/camcv/opencv-2.4.10/samples/c/blobtrack_sample.cpp -o CMakeFiles/example_blobtrack_sample.dir/blobtrack_sample.cpp.s

samples/c/CMakeFiles/example_blobtrack_sample.dir/blobtrack_sample.cpp.o.requires:

.PHONY : samples/c/CMakeFiles/example_blobtrack_sample.dir/blobtrack_sample.cpp.o.requires

samples/c/CMakeFiles/example_blobtrack_sample.dir/blobtrack_sample.cpp.o.provides: samples/c/CMakeFiles/example_blobtrack_sample.dir/blobtrack_sample.cpp.o.requires
	$(MAKE) -f samples/c/CMakeFiles/example_blobtrack_sample.dir/build.make samples/c/CMakeFiles/example_blobtrack_sample.dir/blobtrack_sample.cpp.o.provides.build
.PHONY : samples/c/CMakeFiles/example_blobtrack_sample.dir/blobtrack_sample.cpp.o.provides

samples/c/CMakeFiles/example_blobtrack_sample.dir/blobtrack_sample.cpp.o.provides.build: samples/c/CMakeFiles/example_blobtrack_sample.dir/blobtrack_sample.cpp.o


# Object files for target example_blobtrack_sample
example_blobtrack_sample_OBJECTS = \
"CMakeFiles/example_blobtrack_sample.dir/blobtrack_sample.cpp.o"

# External object files for target example_blobtrack_sample
example_blobtrack_sample_EXTERNAL_OBJECTS =

bin/c-example-blobtrack_sample: samples/c/CMakeFiles/example_blobtrack_sample.dir/blobtrack_sample.cpp.o
bin/c-example-blobtrack_sample: samples/c/CMakeFiles/example_blobtrack_sample.dir/build.make
bin/c-example-blobtrack_sample: lib/libopencv_contrib.so.2.4.10
bin/c-example-blobtrack_sample: lib/libopencv_nonfree.so.2.4.10
bin/c-example-blobtrack_sample: lib/libopencv_gpu.so.2.4.10
bin/c-example-blobtrack_sample: lib/libopencv_photo.so.2.4.10
bin/c-example-blobtrack_sample: lib/libopencv_legacy.so.2.4.10
bin/c-example-blobtrack_sample: lib/libopencv_ocl.so.2.4.10
bin/c-example-blobtrack_sample: lib/libopencv_ml.so.2.4.10
bin/c-example-blobtrack_sample: lib/libopencv_video.so.2.4.10
bin/c-example-blobtrack_sample: lib/libopencv_objdetect.so.2.4.10
bin/c-example-blobtrack_sample: lib/libopencv_calib3d.so.2.4.10
bin/c-example-blobtrack_sample: lib/libopencv_features2d.so.2.4.10
bin/c-example-blobtrack_sample: lib/libopencv_flann.so.2.4.10
bin/c-example-blobtrack_sample: lib/libopencv_highgui.so.2.4.10
bin/c-example-blobtrack_sample: lib/libopencv_imgproc.so.2.4.10
bin/c-example-blobtrack_sample: lib/libopencv_core.so.2.4.10
bin/c-example-blobtrack_sample: samples/c/CMakeFiles/example_blobtrack_sample.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/developer/pidev/camcv/opencv-2.4.10/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/c-example-blobtrack_sample"
	cd /home/developer/pidev/camcv/opencv-2.4.10/build/samples/c && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_blobtrack_sample.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
samples/c/CMakeFiles/example_blobtrack_sample.dir/build: bin/c-example-blobtrack_sample

.PHONY : samples/c/CMakeFiles/example_blobtrack_sample.dir/build

samples/c/CMakeFiles/example_blobtrack_sample.dir/requires: samples/c/CMakeFiles/example_blobtrack_sample.dir/blobtrack_sample.cpp.o.requires

.PHONY : samples/c/CMakeFiles/example_blobtrack_sample.dir/requires

samples/c/CMakeFiles/example_blobtrack_sample.dir/clean:
	cd /home/developer/pidev/camcv/opencv-2.4.10/build/samples/c && $(CMAKE_COMMAND) -P CMakeFiles/example_blobtrack_sample.dir/cmake_clean.cmake
.PHONY : samples/c/CMakeFiles/example_blobtrack_sample.dir/clean

samples/c/CMakeFiles/example_blobtrack_sample.dir/depend:
	cd /home/developer/pidev/camcv/opencv-2.4.10/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/developer/pidev/camcv/opencv-2.4.10 /home/developer/pidev/camcv/opencv-2.4.10/samples/c /home/developer/pidev/camcv/opencv-2.4.10/build /home/developer/pidev/camcv/opencv-2.4.10/build/samples/c /home/developer/pidev/camcv/opencv-2.4.10/build/samples/c/CMakeFiles/example_blobtrack_sample.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : samples/c/CMakeFiles/example_blobtrack_sample.dir/depend

