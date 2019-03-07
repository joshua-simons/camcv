# Install script for directory: /home/developer/pidev/camcv/opencv-2.4.10/samples/cpp

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenCV/samples/cpp" TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ FILES
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/imagelist_creator.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/grabcut.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/starter_imagelist.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/laplace.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/delaunay2.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/peopledetect.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/generic_descriptor_match.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/fback.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/watershed.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/distrans.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/video_homography.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/fitellipse.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/drawing.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/latentsvm_multidetect.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/calibration_artificial.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/matcher_simple.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/hybridtrackingsample.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/dft.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/points_classifier.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/meanshift_segmentation.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/facerec_demo.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/houghlines.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/OpenEXRimages_HDR_Retina_toneMapping.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/opencv_version.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/detector_descriptor_matcher_evaluation.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/image.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/OpenEXRimages_HDR_Retina_toneMapping_video.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/minarea.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/filestorage.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/videostab.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/chamfer.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/detector_descriptor_evaluation.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/bgfg_segm.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/detection_based_tracker_sample.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/kmeans.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/convexhull.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/lkdemo.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/stitching.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/contours2.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/simpleflow_demo.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/calibration.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/letter_recog.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/rgbdodometry.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/linemod.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/logpolar_bsm.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/retinaDemo.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/starter_video.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/video_dmtx.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/bagofwords_classification.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/tvl1_optical_flow.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/freak_demo.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/bgfg_gmg.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/ffilldemo.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/intelperc_capture.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/fabmap_sample.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/stereo_match.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/openni_capture.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/image_sequence.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/descriptor_extractor_matcher.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/edge.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/camshiftdemo.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/stereo_calib.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/connected_components.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/gencolors.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/houghcircles.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/phase_corr.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/select3dobj.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/cout_mat.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/matching_to_many_images.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/inpaint.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/segment_objects.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/brief_match_test.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/em.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/squares.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/demhist.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/kalman.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/stitching_detailed.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/pca.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/morphology2.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/3calibration.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/build3dmodel.cpp"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/right12.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/left01.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/right03.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/left07.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/building.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/left05.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/right08.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/right06.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/left11.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/right04.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/right01.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/right14.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/right02.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/lena.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/right13.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/baboon.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/right07.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/left12.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/left02.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/right11.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/left09.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/left04.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/right09.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/left08.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/left03.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/left06.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/left13.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/left14.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/right05.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/fruits.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/board.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/stuff.jpg"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/tsukuba_r.png"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/pic2.png"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/logo_in_clutter.png"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/tsukuba_l.png"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/pic5.png"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/pic1.png"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/templ.png"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/pic4.png"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/pic3.png"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/pic6.png"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/logo.png"
    "/home/developer/pidev/camcv/opencv-2.4.10/samples/cpp/letter-recognition.data"
    )
endif()

