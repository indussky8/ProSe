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
include test/CMakeFiles/sparse_vector_1.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/sparse_vector_1.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/sparse_vector_1.dir/flags.make

test/CMakeFiles/sparse_vector_1.dir/sparse_vector.cpp.o: test/CMakeFiles/sparse_vector_1.dir/flags.make
test/CMakeFiles/sparse_vector_1.dir/sparse_vector.cpp.o: ../test/sparse_vector.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/sparse_vector_1.dir/sparse_vector.cpp.o"
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/sparse_vector_1.dir/sparse_vector.cpp.o -c /home/ilab/SSDS_PR17-master/SSDS/eigen3/test/sparse_vector.cpp

test/CMakeFiles/sparse_vector_1.dir/sparse_vector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sparse_vector_1.dir/sparse_vector.cpp.i"
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ilab/SSDS_PR17-master/SSDS/eigen3/test/sparse_vector.cpp > CMakeFiles/sparse_vector_1.dir/sparse_vector.cpp.i

test/CMakeFiles/sparse_vector_1.dir/sparse_vector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sparse_vector_1.dir/sparse_vector.cpp.s"
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ilab/SSDS_PR17-master/SSDS/eigen3/test/sparse_vector.cpp -o CMakeFiles/sparse_vector_1.dir/sparse_vector.cpp.s

test/CMakeFiles/sparse_vector_1.dir/sparse_vector.cpp.o.requires:
.PHONY : test/CMakeFiles/sparse_vector_1.dir/sparse_vector.cpp.o.requires

test/CMakeFiles/sparse_vector_1.dir/sparse_vector.cpp.o.provides: test/CMakeFiles/sparse_vector_1.dir/sparse_vector.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/sparse_vector_1.dir/build.make test/CMakeFiles/sparse_vector_1.dir/sparse_vector.cpp.o.provides.build
.PHONY : test/CMakeFiles/sparse_vector_1.dir/sparse_vector.cpp.o.provides

test/CMakeFiles/sparse_vector_1.dir/sparse_vector.cpp.o.provides.build: test/CMakeFiles/sparse_vector_1.dir/sparse_vector.cpp.o

# Object files for target sparse_vector_1
sparse_vector_1_OBJECTS = \
"CMakeFiles/sparse_vector_1.dir/sparse_vector.cpp.o"

# External object files for target sparse_vector_1
sparse_vector_1_EXTERNAL_OBJECTS =

test/sparse_vector_1: test/CMakeFiles/sparse_vector_1.dir/sparse_vector.cpp.o
test/sparse_vector_1: test/CMakeFiles/sparse_vector_1.dir/build.make
test/sparse_vector_1: test/CMakeFiles/sparse_vector_1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable sparse_vector_1"
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sparse_vector_1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/sparse_vector_1.dir/build: test/sparse_vector_1
.PHONY : test/CMakeFiles/sparse_vector_1.dir/build

test/CMakeFiles/sparse_vector_1.dir/requires: test/CMakeFiles/sparse_vector_1.dir/sparse_vector.cpp.o.requires
.PHONY : test/CMakeFiles/sparse_vector_1.dir/requires

test/CMakeFiles/sparse_vector_1.dir/clean:
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/test && $(CMAKE_COMMAND) -P CMakeFiles/sparse_vector_1.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/sparse_vector_1.dir/clean

test/CMakeFiles/sparse_vector_1.dir/depend:
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ilab/SSDS_PR17-master/SSDS/eigen3 /home/ilab/SSDS_PR17-master/SSDS/eigen3/test /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/test /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/test/CMakeFiles/sparse_vector_1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/sparse_vector_1.dir/depend

