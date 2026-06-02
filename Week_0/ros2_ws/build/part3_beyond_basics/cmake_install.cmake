# Install script for directory: /home/vivaan/Documents/star_project_submissions/Week_0/ros2_ws/src/part3_beyond_basics

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/vivaan/Documents/star_project_submissions/Week_0/ros2_ws/install/part3_beyond_basics")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/part3_beyond_basics/environment" TYPE FILE FILES "/home/vivaan/Documents/star_project_submissions/Week_0/ros2_ws/build/part3_beyond_basics/ament_cmake_environment_hooks/pythonpath.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/part3_beyond_basics/environment" TYPE FILE FILES "/home/vivaan/Documents/star_project_submissions/Week_0/ros2_ws/build/part3_beyond_basics/ament_cmake_environment_hooks/pythonpath.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/local/lib/python3.10/dist-packages/part3_beyond_basics_modules-0.0.0-py3.10.egg-info" TYPE DIRECTORY FILES "/home/vivaan/Documents/star_project_submissions/Week_0/ros2_ws/build/part3_beyond_basics/ament_cmake_python/part3_beyond_basics_modules/part3_beyond_basics_modules.egg-info/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/local/lib/python3.10/dist-packages/part3_beyond_basics_modules" TYPE DIRECTORY FILES "/home/vivaan/Documents/star_project_submissions/Week_0/ros2_ws/src/part3_beyond_basics/part3_beyond_basics_modules/" REGEX "/[^/]*\\.pyc$" EXCLUDE REGEX "/\\_\\_pycache\\_\\_$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(
        COMMAND
        "/usr/bin/python3" "-m" "compileall"
        "/home/vivaan/Documents/star_project_submissions/Week_0/ros2_ws/install/part3_beyond_basics/local/lib/python3.10/dist-packages/part3_beyond_basics_modules"
      )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/part3_beyond_basics" TYPE PROGRAM FILES
    "/home/vivaan/Documents/star_project_submissions/Week_0/ros2_ws/src/part3_beyond_basics/scripts/basic_velocity_control.py"
    "/home/vivaan/Documents/star_project_submissions/Week_0/ros2_ws/src/part3_beyond_basics/scripts/stop_me.py"
    "/home/vivaan/Documents/star_project_submissions/Week_0/ros2_ws/src/part3_beyond_basics/scripts/param_circle.py"
    "/home/vivaan/Documents/star_project_submissions/Week_0/ros2_ws/src/part3_beyond_basics/scripts/lidar_subscriber.py"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/part3_beyond_basics" TYPE DIRECTORY FILES "/home/vivaan/Documents/star_project_submissions/Week_0/ros2_ws/src/part3_beyond_basics/launch")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/package_run_dependencies" TYPE FILE FILES "/home/vivaan/Documents/star_project_submissions/Week_0/ros2_ws/build/part3_beyond_basics/ament_cmake_index/share/ament_index/resource_index/package_run_dependencies/part3_beyond_basics")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/parent_prefix_path" TYPE FILE FILES "/home/vivaan/Documents/star_project_submissions/Week_0/ros2_ws/build/part3_beyond_basics/ament_cmake_index/share/ament_index/resource_index/parent_prefix_path/part3_beyond_basics")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/part3_beyond_basics/environment" TYPE FILE FILES "/opt/ros/humble/share/ament_cmake_core/cmake/environment_hooks/environment/ament_prefix_path.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/part3_beyond_basics/environment" TYPE FILE FILES "/home/vivaan/Documents/star_project_submissions/Week_0/ros2_ws/build/part3_beyond_basics/ament_cmake_environment_hooks/ament_prefix_path.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/part3_beyond_basics/environment" TYPE FILE FILES "/opt/ros/humble/share/ament_cmake_core/cmake/environment_hooks/environment/path.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/part3_beyond_basics/environment" TYPE FILE FILES "/home/vivaan/Documents/star_project_submissions/Week_0/ros2_ws/build/part3_beyond_basics/ament_cmake_environment_hooks/path.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/part3_beyond_basics" TYPE FILE FILES "/home/vivaan/Documents/star_project_submissions/Week_0/ros2_ws/build/part3_beyond_basics/ament_cmake_environment_hooks/local_setup.bash")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/part3_beyond_basics" TYPE FILE FILES "/home/vivaan/Documents/star_project_submissions/Week_0/ros2_ws/build/part3_beyond_basics/ament_cmake_environment_hooks/local_setup.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/part3_beyond_basics" TYPE FILE FILES "/home/vivaan/Documents/star_project_submissions/Week_0/ros2_ws/build/part3_beyond_basics/ament_cmake_environment_hooks/local_setup.zsh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/part3_beyond_basics" TYPE FILE FILES "/home/vivaan/Documents/star_project_submissions/Week_0/ros2_ws/build/part3_beyond_basics/ament_cmake_environment_hooks/local_setup.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/part3_beyond_basics" TYPE FILE FILES "/home/vivaan/Documents/star_project_submissions/Week_0/ros2_ws/build/part3_beyond_basics/ament_cmake_environment_hooks/package.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/packages" TYPE FILE FILES "/home/vivaan/Documents/star_project_submissions/Week_0/ros2_ws/build/part3_beyond_basics/ament_cmake_index/share/ament_index/resource_index/packages/part3_beyond_basics")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/part3_beyond_basics/cmake" TYPE FILE FILES
    "/home/vivaan/Documents/star_project_submissions/Week_0/ros2_ws/build/part3_beyond_basics/ament_cmake_core/part3_beyond_basicsConfig.cmake"
    "/home/vivaan/Documents/star_project_submissions/Week_0/ros2_ws/build/part3_beyond_basics/ament_cmake_core/part3_beyond_basicsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/part3_beyond_basics" TYPE FILE FILES "/home/vivaan/Documents/star_project_submissions/Week_0/ros2_ws/src/part3_beyond_basics/package.xml")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/vivaan/Documents/star_project_submissions/Week_0/ros2_ws/build/part3_beyond_basics/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
