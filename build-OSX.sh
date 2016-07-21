
./bootstrap.sh

echo;echo;echo
echo Building boost for OSX
echo;echo;echo

cp boost-build-club-project-config.jam project-config.jam

./b2 -j16 --build-dir=build-OSX     --stagedir=stage-OSX   --toolset=clang \
     cxxflags="-std=c++11 -stdlib=libc++ -arch i386 -arch x86_64" linkflags="-stdlib=libc++" \
     link=shared threading=multi stage

echo;echo;echo
echo Finished building boost for OSX as dylibs
echo;echo;echo
