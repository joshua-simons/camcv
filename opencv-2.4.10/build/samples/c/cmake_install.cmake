# Install script for directory: /home/developer/pidev/camcv/opencv-2.4.10/samples/c

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/samples/c" TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ FILES
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/fback_c.c"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/contours.c"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/delaunay.c"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/polar_transforms.c"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/motempl.c"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/convert_cascade.c"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/morphology.c"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/pyramid_segmentation.c"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/one_way_sample.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/find_obj_calonder.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/facedetect.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/adaptiveskindetector.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/tree_engine.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/mushroom.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/smiledetect.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/bgfg_codebook.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/find_obj.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/mser_sample.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/latentsvmdetect.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/find_obj_ferns.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/blobtrack_sample.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/cat.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/airplane.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/one_way_train_0001.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/lena.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/baboon.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/baboon200.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/baboon200_rotated.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/one_way_train_0000.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/fruits.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/stuff.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/puzzle.png"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/box.png"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/box_in_scene.png"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/JCB.png"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/agaricus-lepiota.data"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/waveform.data"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/build_all.sh"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/cvsample.dsp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/c/facedetect.cmd"
    )
endif()

