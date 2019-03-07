# Install script for directory: /home/developer/pidev/camcv/opencv-2.4.10/samples/gpu

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RELEASE")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/samples/gpu/performance" TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ FILES
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/performance/tests.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/performance/performance.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/performance/performance.h"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "samples")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/samples/gpu" TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ FILES
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/morphology.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/video_reader.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/stereo_multi.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/optical_flow.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/houghlines.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/generalized_hough.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/pyrlk_optical_flow.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/bgfg_segm.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/super_resolution.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/farneback_optical_flow.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/video_writer.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/cascadeclassifier.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/driver_api_stereo_multi.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/stereo_match.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/alpha_comp.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/brox_optical_flow.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/opengl.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/opticalflow_nvidia_api.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/driver_api_multi.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/cascadeclassifier_nvidia_api.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/hog.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/multi.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/surf_keypoint_matcher.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/aloeR.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/aloeL.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/basketball2.png"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/tsucuba_left.png"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/tsucuba_right.png"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/road.png"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/basketball1.png"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/rubberwhale2.png"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/gpu/rubberwhale1.png"
    )
endif()

