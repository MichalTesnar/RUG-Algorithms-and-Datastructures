# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2021.2.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2021.2.3\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\micha\Documents\GitHub\RUG-Algorithms-and-Datastructures\Lab 2"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\micha\Documents\GitHub\RUG-Algorithms-and-Datastructures\Lab 2\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/recognition.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/recognition.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/recognition.dir/flags.make

CMakeFiles/recognition.dir/mainRecog.c.obj: CMakeFiles/recognition.dir/flags.make
CMakeFiles/recognition.dir/mainRecog.c.obj: ../mainRecog.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\micha\Documents\GitHub\RUG-Algorithms-and-Datastructures\Lab 2\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/recognition.dir/mainRecog.c.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\recognition.dir\mainRecog.c.obj -c "C:\Users\micha\Documents\GitHub\RUG-Algorithms-and-Datastructures\Lab 2\mainRecog.c"

CMakeFiles/recognition.dir/mainRecog.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/recognition.dir/mainRecog.c.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\micha\Documents\GitHub\RUG-Algorithms-and-Datastructures\Lab 2\mainRecog.c" > CMakeFiles\recognition.dir\mainRecog.c.i

CMakeFiles/recognition.dir/mainRecog.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/recognition.dir/mainRecog.c.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\micha\Documents\GitHub\RUG-Algorithms-and-Datastructures\Lab 2\mainRecog.c" -o CMakeFiles\recognition.dir\mainRecog.c.s

CMakeFiles/recognition.dir/recognizeEq.c.obj: CMakeFiles/recognition.dir/flags.make
CMakeFiles/recognition.dir/recognizeEq.c.obj: ../recognizeEq.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\micha\Documents\GitHub\RUG-Algorithms-and-Datastructures\Lab 2\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/recognition.dir/recognizeEq.c.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\recognition.dir\recognizeEq.c.obj -c "C:\Users\micha\Documents\GitHub\RUG-Algorithms-and-Datastructures\Lab 2\recognizeEq.c"

CMakeFiles/recognition.dir/recognizeEq.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/recognition.dir/recognizeEq.c.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\micha\Documents\GitHub\RUG-Algorithms-and-Datastructures\Lab 2\recognizeEq.c" > CMakeFiles\recognition.dir\recognizeEq.c.i

CMakeFiles/recognition.dir/recognizeEq.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/recognition.dir/recognizeEq.c.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\micha\Documents\GitHub\RUG-Algorithms-and-Datastructures\Lab 2\recognizeEq.c" -o CMakeFiles\recognition.dir\recognizeEq.c.s

CMakeFiles/recognition.dir/scanner.c.obj: CMakeFiles/recognition.dir/flags.make
CMakeFiles/recognition.dir/scanner.c.obj: ../scanner.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\micha\Documents\GitHub\RUG-Algorithms-and-Datastructures\Lab 2\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/recognition.dir/scanner.c.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\recognition.dir\scanner.c.obj -c "C:\Users\micha\Documents\GitHub\RUG-Algorithms-and-Datastructures\Lab 2\scanner.c"

CMakeFiles/recognition.dir/scanner.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/recognition.dir/scanner.c.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\micha\Documents\GitHub\RUG-Algorithms-and-Datastructures\Lab 2\scanner.c" > CMakeFiles\recognition.dir\scanner.c.i

CMakeFiles/recognition.dir/scanner.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/recognition.dir/scanner.c.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\micha\Documents\GitHub\RUG-Algorithms-and-Datastructures\Lab 2\scanner.c" -o CMakeFiles\recognition.dir\scanner.c.s

# Object files for target recognition
recognition_OBJECTS = \
"CMakeFiles/recognition.dir/mainRecog.c.obj" \
"CMakeFiles/recognition.dir/recognizeEq.c.obj" \
"CMakeFiles/recognition.dir/scanner.c.obj"

# External object files for target recognition
recognition_EXTERNAL_OBJECTS =

recognition.exe: CMakeFiles/recognition.dir/mainRecog.c.obj
recognition.exe: CMakeFiles/recognition.dir/recognizeEq.c.obj
recognition.exe: CMakeFiles/recognition.dir/scanner.c.obj
recognition.exe: CMakeFiles/recognition.dir/build.make
recognition.exe: CMakeFiles/recognition.dir/linklibs.rsp
recognition.exe: CMakeFiles/recognition.dir/objects1.rsp
recognition.exe: CMakeFiles/recognition.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\micha\Documents\GitHub\RUG-Algorithms-and-Datastructures\Lab 2\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable recognition.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\recognition.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/recognition.dir/build: recognition.exe
.PHONY : CMakeFiles/recognition.dir/build

CMakeFiles/recognition.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\recognition.dir\cmake_clean.cmake
.PHONY : CMakeFiles/recognition.dir/clean

CMakeFiles/recognition.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\micha\Documents\GitHub\RUG-Algorithms-and-Datastructures\Lab 2" "C:\Users\micha\Documents\GitHub\RUG-Algorithms-and-Datastructures\Lab 2" "C:\Users\micha\Documents\GitHub\RUG-Algorithms-and-Datastructures\Lab 2\cmake-build-debug" "C:\Users\micha\Documents\GitHub\RUG-Algorithms-and-Datastructures\Lab 2\cmake-build-debug" "C:\Users\micha\Documents\GitHub\RUG-Algorithms-and-Datastructures\Lab 2\cmake-build-debug\CMakeFiles\recognition.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/recognition.dir/depend

