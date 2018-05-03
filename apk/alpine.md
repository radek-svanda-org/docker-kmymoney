apk update
apk add xz
wget ...
xz -d xxx
tar xvf xxx
apk add cmake
    make
    gcc
    g++
    

$ mkdir build
$ cd build
$ cmake .. -DCMAKE_INSTALL_PREFIX=/usr
    to generate the Makefiles.
$ ccmake .
    to change the configuration of the build process. (optional)
