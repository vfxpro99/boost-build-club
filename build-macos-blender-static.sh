
echo for this to work, the script needs to point at the python SDK in the blender dependencies folder
echo exiting until the script is ready
exit 1

./bootstrap.sh \
    --with-python-version=3.5 \
    --with-python-root=/Applications/blender.app/Contents/Resources/2.78/python \
    --with-python=/Applications/blender.app/Contents/Resources/2.78/python/bin/python3.5m

echo;echo;echo
echo Building boost for OSX
echo;echo;echo

cp boost-build-club-project-config.jam project-config.jam

./b2 -j16 --build-dir=build-OSX     --stagedir=stage-OSX   --toolset=clang \
     cxxflags="-std=c++11 -stdlib=libc++ -arch x86_64" linkflags="-stdlib=libc++" \
     include=/Applications/blender.app/Contents/Resources/2.78/python/include/python3.5m \
     link=shared threading=multi stage

echo;echo;echo
echo Finished building boost for OSX as shared dylibs
echo;echo;echo
