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
CMAKE_SOURCE_DIR = /home/ilab/SSDS_PR17-master/SSDS/eigen3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir

# Include any dependencies generated for this target.
include test/CMakeFiles/array_5.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/array_5.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/array_5.dir/flags.make

test/CMakeFiles/array_5.dir/array.cpp.o: test/CMakeFiles/array_5.dir/flags.make
test/CMakeFiles/array_5.dir/array.cpp.o: ../test/array.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/array_5.dir/array.cpp.o"
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/array_5.dir/array.cpp.o -c /home/ilab/SSDS_PR17-master/SSDS/eigen3/test/array.cpp

test/CMakeFiles/array_5.dir/array.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/array_5.dir/array.cpp.i"
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ilab/SSDS_PR17-master/SSDS/eigen3/test/array.cpp > CMakeFiles/array_5.dir/array.cpp.i

test/CMakeFiles/array_5.dir/array.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/array_5.dir/array.cpp.s"
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ilab/SSDS_PR17-master/SSDS/eigen3/test/array.cpp -o CMakeFiles/array_5.dir/array.cpp.s

test/CMakeFiles/array_5.dir/array.cpp.o.requires:
.PHONY : test/CMakeFiles/array_5.dir/array.cpp.o.requires

test/CMakeFiles/array_5.dir/array.cpp.o.provides: test/CMakeFiles/array_5.dir/array.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/array_5.dir/build.make test/CMakeFiles/array_5.dir/array.cpp.o.provides.build
.PHONY : test/CMakeFiles/array_5.dir/array.cpp.o.provides

test/CMakeFiles/array_5.dir/array.cpp.o.provides.build: test/CMakeFiles/array_5.dir/array.cpp.o

# Object files for target array_5
array_5_OBJECTS = \
"CMakeFiles/array_5.dir/array.cpp.o"

# External object files for target array_5
array_5_EXTERNAL_OBJECTS =

test/array_5: test/CMakeFiles/array_5.dir/array.cpp.o
test/array_5: test/CMakeFiles/array_5.dir/build.make
test/array_5: test/CMakeFiles/array_5.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable array_5"
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/array_5.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/array_5.dir/build: test/array_5
.PHONY : test/CMakeFiles/array_5.dir/build

test/CMakeFiles/array_5.dir/requires: test/CMakeFiles/array_5.dir/array.cpp.o.requires
.PHONY : test/CMakeFiles/array_5.dir/requires

test/CMakeFiles/array_5.dir/clean:
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/test && $(CMAKE_COMMAND) -P CMakeFiles/array_5.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/array_5.dir/clean

test/CMakeFiles/array_5.dir/depend:
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ilab/SSDS_PR17-master/SSDS/eigen3 /home/ilab/SSDS_PR17-master/SSDS/eigen3/test /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/test /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/test/CMakeFiles/array_5.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/array_5.dir/depend

