cmake_minimum_required(VERSION 3.13.4)

set(CMAKE_BUILD_TYPE Release)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(GEODE_SDK_DIR ${CMAKE_CURRENT_LIST_DIR}/../..)
set(GEODE_INCLUDE_DIR ${GEODE_SDK_DIR}/include)

if (NOT DEFINED GEODE_TARGET_PLATFORM)
	if(APPLE)
		set(GEODE_TARGET_PLATFORM "MacOS")
	elseif(WIN32)
		set(GEODE_TARGET_PLATFORM "Win32")
	else()
		message(FATAL_ERROR "Unable to detect platform, please set GEODE_TARGET_PLATFORM in the root CMake file.")
	endif()
endif()

add_library(${PROJECT_NAME} SHARED ${SOURCE_FILES})

include(${CMAKE_CURRENT_LIST_DIR}/GeodeFile.cmake)
include(CheckIPOSupported)
include(${CMAKE_CURRENT_LIST_DIR}/${GEODE_TARGET_PLATFORM}.cmake)
check_ipo_supported(RESULT supported OUTPUT error)


if (GEODE_BUILD_CODEGEN)
	add_definitions(-DGEODE_EXPORTING_CODEGEN)
	set(GEODE_CODEGEN_DIR ${CMAKE_CURRENT_BINARY_DIR}/gen)
	file(MAKE_DIRECTORY ${GEODE_CODEGEN_DIR})

	if (GEODE_IMPLICIT_ENTRY)
		set(IMPLICIT_PATH ${GEODE_INCLUDE_DIR}/implicitEntry.cpp)
	else()
		set(IMPLICIT_PATH "")
	endif()

	set_source_files_properties(${GEODE_CODEGEN_DIR}/Source.cpp PROPERTIES GENERATED 1)
	target_sources(${PROJECT_NAME} PRIVATE ${GEODE_CODEGEN_DIR}/Source.cpp ${IMPLICIT_PATH})
	target_include_directories(${PROJECT_NAME} PUBLIC ${CMAKE_BINARY_DIR})
	target_link_libraries(${PROJECT_NAME} fmt)

	add_subdirectory(${GEODE_SDK_DIR}/kit/gen)
endif()

target_link_libraries(${PROJECT_NAME}
	${LINK_LIBRARIES}
)

if (NOT DEFINED GEODE_NO_LINK_LOADER)
	geode_link_bin(${PROJECT_NAME} "${GEODE_SDK_DIR}/bin")
endif()

target_compile_definitions(${PROJECT_NAME} PRIVATE -DPROJECT_NAME=${PROJECT_NAME})
target_include_directories(${PROJECT_NAME} PUBLIC
	${GEODE_INCLUDE_DIR}
	${GEODE_INCLUDE_DIR}/helpers
	${GEODE_INCLUDE_DIR}/base
	${GEODE_INCLUDE_DIR}/c++stl
	${GEODE_INCLUDE_DIR}/hook
	${GEODE_INCLUDE_DIR}/loader
	${GEODE_INCLUDE_DIR}/utils
	${GEODE_INCLUDE_DIR}/meta
	${GEODE_INCLUDE_DIR}/cocos/
	${GEODE_INCLUDE_DIR}/cocos/cocos2dx
	${GEODE_INCLUDE_DIR}/cocos/cocos2dx/include
	${GEODE_INCLUDE_DIR}/cocos/cocos2dx/support/zip_support
	${GEODE_INCLUDE_DIR}/cocos/cocos2dx/kazmath/include
	${GEODE_INCLUDE_DIR}/cocos/extensions
	${GEODE_INCLUDE_DIR}/fmod
	${GEODE_INCLUDE_DIR}/fmt/include
	${INCLUDE_DIRECTORIES}
)

file(GLOB_RECURSE GEODE_NO_PCH ${CMAKE_SOURCE_DIR}/**/*.mm ${CMAKE_SOURCE_DIR}/**/*.m ${CMAKE_SOURCE_DIR}/*.m ${CMAKE_SOURCE_DIR}/*.mm)
set_source_files_properties(${GEODE_NO_PCH} PROPERTIES SKIP_PRECOMPILE_HEADERS ON)
if (NOT GEODE_NO_PRECOMPILED_HEADERS)
	target_precompile_headers(${PROJECT_NAME} PUBLIC
		"$<$<COMPILE_LANGUAGE:CXX>:${GEODE_INCLUDE_DIR}/Geode.hpp>"
	)
endif()

if (NOT DEFINED GEODE_NO_GEODE_FILE)
	create_geode_file(${PROJECT_NAME})
endif()
