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
include test/CMakeFiles/bicgstab_2.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/bicgstab_2.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/bicgstab_2.dir/flags.make

test/CMakeFiles/bicgstab_2.dir/bicgstab.cpp.o: test/CMakeFiles/bicgstab_2.dir/flags.make
test/CMakeFiles/bicgstab_2.dir/bicgstab.cpp.o: ../test/bicgstab.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/bicgstab_2.dir/bicgstab.cpp.o"
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/bicgstab_2.dir/bicgstab.cpp.o -c /home/ilab/SSDS_PR17-master/SSDS/eigen3/test/bicgstab.cpp

test/CMakeFiles/bicgstab_2.dir/bicgstab.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bicgstab_2.dir/bicgstab.cpp.i"
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ilab/SSDS_PR17-master/SSDS/eigen3/test/bicgstab.cpp > CMakeFiles/bicgstab_2.dir/bicgstab.cpp.i

test/CMakeFiles/bicgstab_2.dir/bicgstab.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bicgstab_2.dir/bicgstab.cpp.s"
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ilab/SSDS_PR17-master/SSDS/eigen3/test/bicgstab.cpp -o CMakeFiles/bicgstab_2.dir/bicgstab.cpp.s

test/CMakeFiles/bicgstab_2.dir/bicgstab.cpp.o.requires:
.PHONY : test/CMakeFiles/bicgstab_2.dir/bicgstab.cpp.o.requires

test/CMakeFiles/bicgstab_2.dir/bicgstab.cpp.o.provides: test/CMakeFiles/bicgstab_2.dir/bicgstab.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/bicgstab_2.dir/build.make test/CMakeFiles/bicgstab_2.dir/bicgstab.cpp.o.provides.build
.PHONY : test/CMakeFiles/bicgstab_2.dir/bicgstab.cpp.o.provides

test/CMakeFiles/bicgstab_2.dir/bicgstab.cpp.o.provides.build: test/CMakeFiles/bicgstab_2.dir/bicgstab.cpp.o

# Object files for target bicgstab_2
bicgstab_2_OBJECTS = \
"CMakeFiles/bicgstab_2.dir/bicgstab.cpp.o"

# External object files for target bicgstab_2
bicgstab_2_EXTERNAL_OBJECTS =

test/bicgstab_2: test/CMakeFiles/bicgstab_2.dir/bicgstab.cpp.o
test/bicgstab_2: test/CMakeFiles/bicgstab_2.dir/build.make
test/bicgstab_2: test/CMakeFiles/bicgstab_2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable bicgstab_2"
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bicgstab_2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/bicgstab_2.dir/build: test/bicgstab_2
.PHONY : test/CMakeFiles/bicgstab_2.dir/build

test/CMakeFiles/bicgstab_2.dir/requires: test/CMakeFiles/bicgstab_2.dir/bicgstab.cpp.o.requires
.PHONY : test/CMakeFiles/bicgstab_2.dir/requires

test/CMakeFiles/bicgstab_2.dir/clean:
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/test && $(CMAKE_COMMAND) -P CMakeFiles/bicgstab_2.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/bicgstab_2.dir/clean

test/CMakeFiles/bicgstab_2.dir/depend:
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ilab/SSDS_PR17-master/SSDS/eigen3 /home/ilab/SSDS_PR17-master/SSDS/eigen3/test /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/test /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/test/CMakeFiles/bicgstab_2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/bicgstab_2.dir/depend

