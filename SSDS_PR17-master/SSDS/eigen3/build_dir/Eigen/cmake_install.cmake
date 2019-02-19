# Install script for directory: /home/ilab/SSDS_PR17-master/SSDS/eigen3/Eigen

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/Eigen" TYPE FILE FILES
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/Eigen/PaStiXSupport"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/Eigen/SPQRSupport"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/Eigen/SparseCore"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/Eigen/Eigenvalues"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/Eigen/MetisSupport"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/Eigen/PardisoSupport"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/Eigen/SparseCholesky"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/Eigen/QR"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/Eigen/OrderingMethods"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/Eigen/UmfPackSupport"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/Eigen/Geometry"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/Eigen/IterativeLinearSolvers"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/Eigen/Householder"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/Eigen/QtAlignedMalloc"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/Eigen/SparseLU"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/Eigen/CholmodSupport"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/Eigen/Jacobi"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/Eigen/StdVector"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/Eigen/Eigen"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/Eigen/Core"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/Eigen/SVD"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/Eigen/Sparse"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/Eigen/SparseQR"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/Eigen/StdList"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/Eigen/LU"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/Eigen/StdDeque"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/Eigen/SuperLUSupport"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/Eigen/Dense"
    "/home/ilab/SSDS_PR17-master/SSDS/eigen3/Eigen/Cholesky"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Devel")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Devel")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/Eigen" TYPE DIRECTORY FILES "/home/ilab/SSDS_PR17-master/SSDS/eigen3/Eigen/src" FILES_MATCHING REGEX "/[^/]*\\.h$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Devel")

