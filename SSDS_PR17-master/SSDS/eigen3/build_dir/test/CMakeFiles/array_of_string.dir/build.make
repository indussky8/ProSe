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
include test/CMakeFiles/array_of_string.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/array_of_string.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/array_of_string.dir/flags.make

test/CMakeFiles/array_of_string.dir/array_of_string.cpp.o: test/CMakeFiles/array_of_string.dir/flags.make
test/CMakeFiles/array_of_string.dir/array_of_string.cpp.o: ../test/array_of_string.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/array_of_string.dir/array_of_string.cpp.o"
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/array_of_string.dir/array_of_string.cpp.o -c /home/ilab/SSDS_PR17-master/SSDS/eigen3/test/array_of_string.cpp

test/CMakeFiles/array_of_string.dir/array_of_string.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/array_of_string.dir/array_of_string.cpp.i"
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ilab/SSDS_PR17-master/SSDS/eigen3/test/array_of_string.cpp > CMakeFiles/array_of_string.dir/array_of_string.cpp.i

test/CMakeFiles/array_of_string.dir/array_of_string.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/array_of_string.dir/array_of_string.cpp.s"
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ilab/SSDS_PR17-master/SSDS/eigen3/test/array_of_string.cpp -o CMakeFiles/array_of_string.dir/array_of_string.cpp.s

test/CMakeFiles/array_of_string.dir/array_of_string.cpp.o.requires:
.PHONY : test/CMakeFiles/array_of_string.dir/array_of_string.cpp.o.requires

test/CMakeFiles/array_of_string.dir/array_of_string.cpp.o.provides: test/CMakeFiles/array_of_string.dir/array_of_string.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/array_of_string.dir/build.make test/CMakeFiles/array_of_string.dir/array_of_string.cpp.o.provides.build
.PHONY : test/CMakeFiles/array_of_string.dir/array_of_string.cpp.o.provides

test/CMakeFiles/array_of_string.dir/array_of_string.cpp.o.provides.build: test/CMakeFiles/array_of_string.dir/array_of_string.cpp.o

# Object files for target array_of_string
array_of_string_OBJECTS = \
"CMakeFiles/array_of_string.dir/array_of_string.cpp.o"

# External object files for target array_of_string
array_of_string_EXTERNAL_OBJECTS =

test/array_of_string: test/CMakeFiles/array_of_string.dir/array_of_string.cpp.o
test/array_of_string: test/CMakeFiles/array_of_string.dir/build.make
test/array_of_string: test/CMakeFiles/array_of_string.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable array_of_string"
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/array_of_string.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/array_of_string.dir/build: test/array_of_string
.PHONY : test/CMakeFiles/array_of_string.dir/build

test/CMakeFiles/array_of_string.dir/requires: test/CMakeFiles/array_of_string.dir/array_of_string.cpp.o.requires
.PHONY : test/CMakeFiles/array_of_string.dir/requires

test/CMakeFiles/array_of_string.dir/clean:
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/test && $(CMAKE_COMMAND) -P CMakeFiles/array_of_string.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/array_of_string.dir/clean

test/CMakeFiles/array_of_string.dir/depend:
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ilab/SSDS_PR17-master/SSDS/eigen3 /home/ilab/SSDS_PR17-master/SSDS/eigen3/test /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/test /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/test/CMakeFiles/array_of_string.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/array_of_string.dir/depend
