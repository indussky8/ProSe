# Install script for directory: /home/ilab/SSDS_PR17-master/SSDS/eigen3/unsupported/Eigen

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen" TYPE FILE FILES
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/unsupported/Eigen/AdolcForward"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/unsupported/Eigen/AlignedVector3"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/unsupported/Eigen/ArpackSupport"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/unsupported/Eigen/AutoDiff"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/unsupported/Eigen/BVH"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/unsupported/Eigen/EulerAngles"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/unsupported/Eigen/FFT"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/unsupported/Eigen/IterativeSolvers"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/unsupported/Eigen/KroneckerProduct"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/unsupported/Eigen/LevenbergMarquardt"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/unsupported/Eigen/MatrixFunctions"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/unsupported/Eigen/MoreVectorization"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/unsupported/Eigen/MPRealSupport"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/unsupported/Eigen/NonLinearOptimization"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/unsupported/Eigen/NumericalDiff"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/unsupported/Eigen/OpenGLSupport"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/unsupported/Eigen/Polynomials"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/unsupported/Eigen/Skyline"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/unsupported/Eigen/SparseExtra"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/unsupported/Eigen/SpecialFunctions"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/unsupported/Eigen/Splines"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen" TYPE DIRECTORY FILES "/home/ilab/SSDS_PR17-master/SSDS/eigen3/unsupported/Eigen/src" FILES_MATCHING REGEX "/[^/]*\\.h$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Devel")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/ilab/SSDS_PR17-master/SSDS/eigen3/build_dir/unsupported/Eigen/CXX11/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

