#! /bin/bash

cd /shared/apps/
mkdir opencv-2.4.10
cd opencv-2.4.10

# opencv release: http://opencv.org/releases.html
wget --no-check-certificate http://sourceforge.net/projects/opencvlibrary/files/opencv-unix/2.4.10/opencv-2.4.10.zip/download

unzip opencv-2.4.10
cd opencv-2.4.10
mkdir build
##cd build
cmake \
-DCMAKE_BUILD_TYPE=RELEASE \
-DCMAKE_INSTALL_PREFIX=/shared/apps/opencv-2.4.10/build \
-DWITH_TBB=OFF \
-DBUILD_NEW_PYTHON_SUPPORT=ON \
-DWITH_LIBV4L=ON \
-DWITH_GTK=ON \
-DWITH_1394=ON \
-DWITH_EIGEN=ON \
-DWITH_FFMPEG=ON \
-DINSTALL_C_EXAMPLES=ON \
-DINSTALL_PYTHON_EXAMPLES=ON \
-DBUILD_EXAMPLES=ON \
-DWITH_QT=OFF \
-DWITH_OPENGL=OFF \
-DWITH_PNG=ON \
-DWITH_TIFF=ON \
-Wno-dev 
make
make install

