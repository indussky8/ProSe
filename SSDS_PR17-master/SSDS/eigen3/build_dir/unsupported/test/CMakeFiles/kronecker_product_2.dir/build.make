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
include unsupported/test/CMakeFiles/kronecker_product_2.dir/depend.make

# Include the progress variables for this target.
include unsupported/test/CMakeFiles/kronecker_product_2.dir/progress.make

# Include the compile flags for this target's objects.
include unsupported/test/CMakeFiles/kronecker_product_2.dir/flags.make

unsupported/test/CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.o: unsupported/test/CMakeFiles/kronecker_product_2.dir/flags.make
unsupported/test/CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.o: ../unsupported/test/kronecker_product.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object unsupported/test/CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.o"
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/unsupported/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.o -c /home/ilab/SSDS_PR17-master/SSDS/eigen3/unsupported/test/kronecker_product.cpp

unsupported/test/CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.i"
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/unsupported/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ilab/SSDS_PR17-master/SSDS/eigen3/unsupported/test/kronecker_product.cpp > CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.i

unsupported/test/CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.s"
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/unsupported/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ilab/SSDS_PR17-master/SSDS/eigen3/unsupported/test/kronecker_product.cpp -o CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.s

unsupported/test/CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.o.requires:
.PHONY : unsupported/test/CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.o.requires

unsupported/test/CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.o.provides: unsupported/test/CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.o.requires
	$(MAKE) -f unsupported/test/CMakeFiles/kronecker_product_2.dir/build.make unsupported/test/CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.o.provides.build
.PHONY : unsupported/test/CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.o.provides

unsupported/test/CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.o.provides.build: unsupported/test/CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.o

# Object files for target kronecker_product_2
kronecker_product_2_OBJECTS = \
"CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.o"

# External object files for target kronecker_product_2
kronecker_product_2_EXTERNAL_OBJECTS =

unsupported/test/kronecker_product_2: unsupported/test/CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.o
unsupported/test/kronecker_product_2: unsupported/test/CMakeFiles/kronecker_product_2.dir/build.make
unsupported/test/kronecker_product_2: unsupported/test/CMakeFiles/kronecker_product_2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable kronecker_product_2"
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/unsupported/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kronecker_product_2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
unsupported/test/CMakeFiles/kronecker_product_2.dir/build: unsupported/test/kronecker_product_2
.PHONY : unsupported/test/CMakeFiles/kronecker_product_2.dir/build

unsupported/test/CMakeFiles/kronecker_product_2.dir/requires: unsupported/test/CMakeFiles/kronecker_product_2.dir/kronecker_product.cpp.o.requires
.PHONY : unsupported/test/CMakeFiles/kronecker_product_2.dir/requires

unsupported/test/CMakeFiles/kronecker_product_2.dir/clean:
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/unsupported/test && $(CMAKE_COMMAND) -P CMakeFiles/kronecker_product_2.dir/cmake_clean.cmake
.PHONY : unsupported/test/CMakeFiles/kronecker_product_2.dir/clean

unsupported/test/CMakeFiles/kronecker_product_2.dir/depend:
	cd /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ilab/SSDS_PR17-master/SSDS/eigen3 /home/ilab/SSDS_PR17-master/SSDS/eigen3/unsupported/test /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/unsupported/test /home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/unsupported/test/CMakeFiles/kronecker_product_2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unsupported/test/CMakeFiles/kronecker_product_2.dir/depend

