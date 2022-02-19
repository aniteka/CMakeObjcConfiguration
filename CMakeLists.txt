set(CMAKE_EXPORT_COMPILE_COMMANDS 1)

# -lgnustep-base -lobjc
# < https://coderlessons.com/tutorials/kompiuternoe-programmirovanie/izuchit-tsel-c-programmirovanie/nastroika-sredy-objective-c >

cmake_minimum_required(VERSION 3.0.0)
project(HelloWorld)

SET(CMAKE_C_COMPILER clang)
SET(CMAKE_CXX_COMPILER clang++)

add_executable(HelloWorld 
	src/hello.m
)

target_compile_options(HelloWorld PRIVATE 
	-MMD -MP -DGNUSTEP 
	-DGNUSTEP_BASE_LIBRARY=1 
	-DGNU_GUI_LIBRARY=1 
	-DGNU_RUNTIME=1 
	-DGNUSTEP_BASE_LIBRARY=1
	-fno-strict-aliasing 
	-fexceptions 
	-fobjc-exceptions 
	-D_NATIVE_OBJC_EXCEPTIONS 
	-pthread -fPIC -Wall -DGSWARN 
	-DGSDIAGNOSE 
	-Wno-import 
	-g 
	-O2 
	-fgnu-runtime 
	-fconstant-string-class=NSConstantString 
	-I. 
	-I/home/ani/GNUstep/Library/Headers 
	-I/usr/local/include/GNUstep 
	-I/usr/include/GNUstep 
	-I/usr/lib/gcc/x86_64-linux-gnu/9/include
)

target_link_libraries(HelloWorld gnustep-base objc BlocksRuntime)

target_include_directories(HelloWorld PRIVATE usr/include/GNUstep/)
