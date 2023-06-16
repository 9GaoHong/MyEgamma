# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /cvmfs/sft.cern.ch/lcg/releases/CMake/3.14.3-34449/x86_64-centos7-gcc9-opt/bin/cmake

# The command to remove a file.
RM = /cvmfs/sft.cern.ch/lcg/releases/CMake/3.14.3-34449/x86_64-centos7-gcc9-opt/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /afs/cern.ch/user/h/hgao/TnPtree-analyzer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /afs/cern.ch/user/h/hgao/TnPtree-analyzer/build

# Include any dependencies generated for this target.
include CMakeFiles/addBranches.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/addBranches.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/addBranches.dir/flags.make

CMakeFiles/addBranches.dir/src/addBranches.cc.o: CMakeFiles/addBranches.dir/flags.make
CMakeFiles/addBranches.dir/src/addBranches.cc.o: ../src/addBranches.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/afs/cern.ch/user/h/hgao/TnPtree-analyzer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/addBranches.dir/src/addBranches.cc.o"
	/cvmfs/sft.cern.ch/lcg/releases/gcc/9.2.0-afc57/x86_64-centos7/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/addBranches.dir/src/addBranches.cc.o -c /afs/cern.ch/user/h/hgao/TnPtree-analyzer/src/addBranches.cc

CMakeFiles/addBranches.dir/src/addBranches.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/addBranches.dir/src/addBranches.cc.i"
	/cvmfs/sft.cern.ch/lcg/releases/gcc/9.2.0-afc57/x86_64-centos7/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /afs/cern.ch/user/h/hgao/TnPtree-analyzer/src/addBranches.cc > CMakeFiles/addBranches.dir/src/addBranches.cc.i

CMakeFiles/addBranches.dir/src/addBranches.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/addBranches.dir/src/addBranches.cc.s"
	/cvmfs/sft.cern.ch/lcg/releases/gcc/9.2.0-afc57/x86_64-centos7/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /afs/cern.ch/user/h/hgao/TnPtree-analyzer/src/addBranches.cc -o CMakeFiles/addBranches.dir/src/addBranches.cc.s

# Object files for target addBranches
addBranches_OBJECTS = \
"CMakeFiles/addBranches.dir/src/addBranches.cc.o"

# External object files for target addBranches
addBranches_EXTERNAL_OBJECTS =

../bin/addBranches: CMakeFiles/addBranches.dir/src/addBranches.cc.o
../bin/addBranches: CMakeFiles/addBranches.dir/build.make
../bin/addBranches: ../lib/libtnpfit.so
../bin/addBranches: /cvmfs/sft.cern.ch/lcg/views/LCG_97python3/x86_64-centos7-gcc9-opt/lib/libyaml-cpp.so.0.6.2
../bin/addBranches: /cvmfs/sft.cern.ch/lcg/views/LCG_97python3/x86_64-centos7-gcc9-opt/lib/libPhysics.so
../bin/addBranches: /cvmfs/sft.cern.ch/lcg/views/LCG_97python3/x86_64-centos7-gcc9-opt/lib/libTreePlayer.so
../bin/addBranches: /cvmfs/sft.cern.ch/lcg/views/LCG_97python3/x86_64-centos7-gcc9-opt/lib/libTree.so
../bin/addBranches: /cvmfs/sft.cern.ch/lcg/views/LCG_97python3/x86_64-centos7-gcc9-opt/lib/libGraf3d.so
../bin/addBranches: /cvmfs/sft.cern.ch/lcg/views/LCG_97python3/x86_64-centos7-gcc9-opt/lib/libGpad.so
../bin/addBranches: /cvmfs/sft.cern.ch/lcg/views/LCG_97python3/x86_64-centos7-gcc9-opt/lib/libGraf.so
../bin/addBranches: /cvmfs/sft.cern.ch/lcg/views/LCG_97python3/x86_64-centos7-gcc9-opt/lib/libHist.so
../bin/addBranches: /cvmfs/sft.cern.ch/lcg/views/LCG_97python3/x86_64-centos7-gcc9-opt/lib/libMatrix.so
../bin/addBranches: /cvmfs/sft.cern.ch/lcg/views/LCG_97python3/x86_64-centos7-gcc9-opt/lib/libMathCore.so
../bin/addBranches: /cvmfs/sft.cern.ch/lcg/views/LCG_97python3/x86_64-centos7-gcc9-opt/lib/libImt.so
../bin/addBranches: /cvmfs/sft.cern.ch/lcg/views/LCG_97python3/x86_64-centos7-gcc9-opt/lib/libMultiProc.so
../bin/addBranches: /cvmfs/sft.cern.ch/lcg/views/LCG_97python3/x86_64-centos7-gcc9-opt/lib/libNet.so
../bin/addBranches: /cvmfs/sft.cern.ch/lcg/views/LCG_97python3/x86_64-centos7-gcc9-opt/lib/libRIO.so
../bin/addBranches: /cvmfs/sft.cern.ch/lcg/views/LCG_97python3/x86_64-centos7-gcc9-opt/lib/libThread.so
../bin/addBranches: /cvmfs/sft.cern.ch/lcg/views/LCG_97python3/x86_64-centos7-gcc9-opt/lib/libCore.so
../bin/addBranches: /cvmfs/sft.cern.ch/lcg/views/LCG_97python3/x86_64-centos7-gcc9-opt/lib/libboost_program_options.so.1.72.0
../bin/addBranches: CMakeFiles/addBranches.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/afs/cern.ch/user/h/hgao/TnPtree-analyzer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/addBranches"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/addBranches.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/addBranches.dir/build: ../bin/addBranches

.PHONY : CMakeFiles/addBranches.dir/build

CMakeFiles/addBranches.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/addBranches.dir/cmake_clean.cmake
.PHONY : CMakeFiles/addBranches.dir/clean

CMakeFiles/addBranches.dir/depend:
	cd /afs/cern.ch/user/h/hgao/TnPtree-analyzer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /afs/cern.ch/user/h/hgao/TnPtree-analyzer /afs/cern.ch/user/h/hgao/TnPtree-analyzer /afs/cern.ch/user/h/hgao/TnPtree-analyzer/build /afs/cern.ch/user/h/hgao/TnPtree-analyzer/build /afs/cern.ch/user/h/hgao/TnPtree-analyzer/build/CMakeFiles/addBranches.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/addBranches.dir/depend
