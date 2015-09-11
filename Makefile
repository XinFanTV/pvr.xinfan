# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

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
CMAKE_SOURCE_DIR = /home/xbmc/git/pvr.xinfan2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xbmc/git/pvr.xinfan2

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running interactive CMake command-line interface..."
	/usr/bin/cmake -i .
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target install
install: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install

# Special rule for the target install
install/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install/fast

# Special rule for the target install/local
install/local: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local

# Special rule for the target install/local
install/local/fast: install/local
.PHONY : install/local/fast

# Special rule for the target list_install_components
list_install_components:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Available install components are: \"Unspecified\""
.PHONY : list_install_components

# Special rule for the target list_install_components
list_install_components/fast: list_install_components
.PHONY : list_install_components/fast

# Special rule for the target package
package: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Run CPack packaging tool..."
	/usr/bin/cpack --config ./CPackConfig.cmake
.PHONY : package

# Special rule for the target package
package/fast: package
.PHONY : package/fast

# Special rule for the target package_source
package_source:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Run CPack packaging tool for source..."
	/usr/bin/cpack --config ./CPackSourceConfig.cmake /home/xbmc/git/pvr.xinfan2/CPackSourceConfig.cmake
.PHONY : package_source

# Special rule for the target package_source
package_source/fast: package_source
.PHONY : package_source/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/xbmc/git/pvr.xinfan2/CMakeFiles /home/xbmc/git/pvr.xinfan2/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/xbmc/git/pvr.xinfan2/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named addon-package

# Build rule for target.
addon-package: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 addon-package
.PHONY : addon-package

# fast build rule for target.
addon-package/fast:
	$(MAKE) -f CMakeFiles/addon-package.dir/build.make CMakeFiles/addon-package.dir/build
.PHONY : addon-package/fast

#=============================================================================
# Target rules for targets named pvr.xinfan

# Build rule for target.
pvr.xinfan: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 pvr.xinfan
.PHONY : pvr.xinfan

# fast build rule for target.
pvr.xinfan/fast:
	$(MAKE) -f CMakeFiles/pvr.xinfan.dir/build.make CMakeFiles/pvr.xinfan.dir/build
.PHONY : pvr.xinfan/fast

# Manual pre-install relink rule for target.
pvr.xinfan/preinstall:
	$(MAKE) -f CMakeFiles/pvr.xinfan.dir/build.make CMakeFiles/pvr.xinfan.dir/preinstall
.PHONY : pvr.xinfan/preinstall

src/PVRXinFanData.o: src/PVRXinFanData.cpp.o
.PHONY : src/PVRXinFanData.o

# target to build an object file
src/PVRXinFanData.cpp.o:
	$(MAKE) -f CMakeFiles/pvr.xinfan.dir/build.make CMakeFiles/pvr.xinfan.dir/src/PVRXinFanData.cpp.o
.PHONY : src/PVRXinFanData.cpp.o

src/PVRXinFanData.i: src/PVRXinFanData.cpp.i
.PHONY : src/PVRXinFanData.i

# target to preprocess a source file
src/PVRXinFanData.cpp.i:
	$(MAKE) -f CMakeFiles/pvr.xinfan.dir/build.make CMakeFiles/pvr.xinfan.dir/src/PVRXinFanData.cpp.i
.PHONY : src/PVRXinFanData.cpp.i

src/PVRXinFanData.s: src/PVRXinFanData.cpp.s
.PHONY : src/PVRXinFanData.s

# target to generate assembly for a file
src/PVRXinFanData.cpp.s:
	$(MAKE) -f CMakeFiles/pvr.xinfan.dir/build.make CMakeFiles/pvr.xinfan.dir/src/PVRXinFanData.cpp.s
.PHONY : src/PVRXinFanData.cpp.s

src/client.o: src/client.cpp.o
.PHONY : src/client.o

# target to build an object file
src/client.cpp.o:
	$(MAKE) -f CMakeFiles/pvr.xinfan.dir/build.make CMakeFiles/pvr.xinfan.dir/src/client.cpp.o
.PHONY : src/client.cpp.o

src/client.i: src/client.cpp.i
.PHONY : src/client.i

# target to preprocess a source file
src/client.cpp.i:
	$(MAKE) -f CMakeFiles/pvr.xinfan.dir/build.make CMakeFiles/pvr.xinfan.dir/src/client.cpp.i
.PHONY : src/client.cpp.i

src/client.s: src/client.cpp.s
.PHONY : src/client.s

# target to generate assembly for a file
src/client.cpp.s:
	$(MAKE) -f CMakeFiles/pvr.xinfan.dir/build.make CMakeFiles/pvr.xinfan.dir/src/client.cpp.s
.PHONY : src/client.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... addon-package"
	@echo "... edit_cache"
	@echo "... install"
	@echo "... install/local"
	@echo "... list_install_components"
	@echo "... package"
	@echo "... package_source"
	@echo "... pvr.xinfan"
	@echo "... rebuild_cache"
	@echo "... src/PVRXinFanData.o"
	@echo "... src/PVRXinFanData.i"
	@echo "... src/PVRXinFanData.s"
	@echo "... src/client.o"
	@echo "... src/client.i"
	@echo "... src/client.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

