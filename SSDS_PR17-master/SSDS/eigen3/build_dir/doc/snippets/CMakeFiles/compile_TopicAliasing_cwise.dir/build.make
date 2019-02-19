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
include doc/snippets/CMakeFiles/compile_TopicAliasing_cwise.dir/depend.make

# Include the progress variables for this target.
include doc/snippets/CMakeFiles/compile_TopicAliasing_cwise.dir/progress.make

# Include the compile flags for this target's objects.
include doc/snippets/CMakeFiles/compile_TopicAliasing_cwise.dir/flags.make

doc/snippets/CMakeFiles/compile_TopicAliasing_cwise.dir/compile_TopicAliasing_cwise.cpp.o: doc/snippets/CMakeFiles/compile_TopicAliasing_cwise.dir/flags.make
doc/snippets/CMakeFiles/compile_TopicAliasing_cwise.dir/compile_TopicAliasing_cwise.cpp.o: doc/snippets/compile_TopicAliasing_cwise.cpp
doc/snippets/CMakeFiles/compile_TopicAliasing_cwise.dir/compile_TopicAliasing_cwise.cpp.o: ../doc/snippets/TopicAliasing_cwise.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object doc/snippets/CMakeFiles/compile_TopicAliasing_cwise.dir/compile_TopicAliasing_cwise.cpp.o"
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/doc/snippets && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/compile_TopicAliasing_cwise.dir/compile_TopicAliasing_cwise.cpp.o -c /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/doc/snippets/compile_TopicAliasing_cwise.cpp

doc/snippets/CMakeFiles/compile_TopicAliasing_cwise.dir/compile_TopicAliasing_cwise.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/compile_TopicAliasing_cwise.dir/compile_TopicAliasing_cwise.cpp.i"
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/doc/snippets && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/doc/snippets/compile_TopicAliasing_cwise.cpp > CMakeFiles/compile_TopicAliasing_cwise.dir/compile_TopicAliasing_cwise.cpp.i

doc/snippets/CMakeFiles/compile_TopicAliasing_cwise.dir/compile_TopicAliasing_cwise.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/compile_TopicAliasing_cwise.dir/compile_TopicAliasing_cwise.cpp.s"
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/doc/snippets && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/doc/snippets/compile_TopicAliasing_cwise.cpp -o CMakeFiles/compile_TopicAliasing_cwise.dir/compile_TopicAliasing_cwise.cpp.s

doc/snippets/CMakeFiles/compile_TopicAliasing_cwise.dir/compile_TopicAliasing_cwise.cpp.o.requires:
.PHONY : doc/snippets/CMakeFiles/compile_TopicAliasing_cwise.dir/compile_TopicAliasing_cwise.cpp.o.requires

doc/snippets/CMakeFiles/compile_TopicAliasing_cwise.dir/compile_TopicAliasing_cwise.cpp.o.provides: doc/snippets/CMakeFiles/compile_TopicAliasing_cwise.dir/compile_TopicAliasing_cwise.cpp.o.requires
	$(MAKE) -f doc/snippets/CMakeFiles/compile_TopicAliasing_cwise.dir/build.make doc/snippets/CMakeFiles/compile_TopicAliasing_cwise.dir/compile_TopicAliasing_cwise.cpp.o.provides.build
.PHONY : doc/snippets/CMakeFiles/compile_TopicAliasing_cwise.dir/compile_TopicAliasing_cwise.cpp.o.provides

doc/snippets/CMakeFiles/compile_TopicAliasing_cwise.dir/compile_TopicAliasing_cwise.cpp.o.provides.build: doc/snippets/CMakeFiles/compile_TopicAliasing_cwise.dir/compile_TopicAliasing_cwise.cpp.o

# Object files for target compile_TopicAliasing_cwise
compile_TopicAliasing_cwise_OBJECTS = \
"CMakeFiles/compile_TopicAliasing_cwise.dir/compile_TopicAliasing_cwise.cpp.o"

# External object files for target compile_TopicAliasing_cwise
compile_TopicAliasing_cwise_EXTERNAL_OBJECTS =

doc/snippets/compile_TopicAliasing_cwise: doc/snippets/CMakeFiles/compile_TopicAliasing_cwise.dir/compile_TopicAliasing_cwise.cpp.o
doc/snippets/compile_TopicAliasing_cwise: doc/snippets/CMakeFiles/compile_TopicAliasing_cwise.dir/build.make
doc/snippets/compile_TopicAliasing_cwise: doc/snippets/CMakeFiles/compile_TopicAliasing_cwise.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable compile_TopicAliasing_cwise"
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/doc/snippets && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/compile_TopicAliasing_cwise.dir/link.txt --verbose=$(VERBOSE)
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/doc/snippets && ./compile_TopicAliasing_cwise >/home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/doc/snippets/TopicAliasing_cwise.out

# Rule to build all files generated by this target.
doc/snippets/CMakeFiles/compile_TopicAliasing_cwise.dir/build: doc/snippets/compile_TopicAliasing_cwise
.PHONY : doc/snippets/CMakeFiles/compile_TopicAliasing_cwise.dir/build

doc/snippets/CMakeFiles/compile_TopicAliasing_cwise.dir/requires: doc/snippets/CMakeFiles/compile_TopicAliasing_cwise.dir/compile_TopicAliasing_cwise.cpp.o.requires
.PHONY : doc/snippets/CMakeFiles/compile_TopicAliasing_cwise.dir/requires

doc/snippets/CMakeFiles/compile_TopicAliasing_cwise.dir/clean:
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/doc/snippets && $(CMAKE_COMMAND) -P CMakeFiles/compile_TopicAliasing_cwise.dir/cmake_clean.cmake
.PHONY : doc/snippets/CMakeFiles/compile_TopicAliasing_cwise.dir/clean

doc/snippets/CMakeFiles/compile_TopicAliasing_cwise.dir/depend:
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ilab/SSDS_PR17-master/SSDS/eigen3 /home/ilab/SSDS_PR17-master/SSDS/eigen3/doc/snippets /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/doc/snippets /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/doc/snippets/CMakeFiles/compile_TopicAliasing_cwise.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/snippets/CMakeFiles/compile_TopicAliasing_cwise.dir/depend

