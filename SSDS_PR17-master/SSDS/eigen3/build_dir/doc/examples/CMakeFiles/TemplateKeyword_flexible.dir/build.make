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
include doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/depend.make

# Include the progress variables for this target.
include doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/progress.make

# Include the compile flags for this target's objects.
include doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/flags.make

doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.o: doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/flags.make
doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.o: ../doc/examples/TemplateKeyword_flexible.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.o"
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/doc/examples && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.o -c /home/ilab/SSDS_PR17-master/SSDS/eigen3/doc/examples/TemplateKeyword_flexible.cpp

doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.i"
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/doc/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ilab/SSDS_PR17-master/SSDS/eigen3/doc/examples/TemplateKeyword_flexible.cpp > CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.i

doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.s"
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/doc/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ilab/SSDS_PR17-master/SSDS/eigen3/doc/examples/TemplateKeyword_flexible.cpp -o CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.s

doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.o.requires:
.PHONY : doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.o.requires

doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.o.provides: doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.o.requires
	$(MAKE) -f doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/build.make doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.o.provides.build
.PHONY : doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.o.provides

doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.o.provides.build: doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.o

# Object files for target TemplateKeyword_flexible
TemplateKeyword_flexible_OBJECTS = \
"CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.o"

# External object files for target TemplateKeyword_flexible
TemplateKeyword_flexible_EXTERNAL_OBJECTS =

doc/examples/TemplateKeyword_flexible: doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.o
doc/examples/TemplateKeyword_flexible: doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/build.make
doc/examples/TemplateKeyword_flexible: doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable TemplateKeyword_flexible"
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/doc/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TemplateKeyword_flexible.dir/link.txt --verbose=$(VERBOSE)
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/doc/examples && ./TemplateKeyword_flexible >/home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/doc/examples/TemplateKeyword_flexible.out

# Rule to build all files generated by this target.
doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/build: doc/examples/TemplateKeyword_flexible
.PHONY : doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/build

doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/requires: doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/TemplateKeyword_flexible.cpp.o.requires
.PHONY : doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/requires

doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/clean:
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/doc/examples && $(CMAKE_COMMAND) -P CMakeFiles/TemplateKeyword_flexible.dir/cmake_clean.cmake
.PHONY : doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/clean

doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/depend:
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ilab/SSDS_PR17-master/SSDS/eigen3 /home/ilab/SSDS_PR17-master/SSDS/eigen3/doc/examples /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/doc/examples /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/examples/CMakeFiles/TemplateKeyword_flexible.dir/depend

