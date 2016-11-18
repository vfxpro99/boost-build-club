
./bootstrap.sh \
    --with-python-version=2.7 \
    --with-python-root=/Applications/Autodesk/maya2017/Maya.app/Contents/Frameworks/Python.framework/Versions/2.7 \
    --with-python=/Applications/Autodesk/maya2017/Maya.app/Contents/Frameworks/Python.framework/Versions/2.7/bin/python2.7

echo;echo;echo
echo Building boost for OSX
echo;echo;echo

cp boost-build-club-project-config.jam project-config.jam

./b2 -j16 --build-dir=build-OSX     --stagedir=stage-OSX   --toolset=clang \
     cxxflags="-std=c++11 -stdlib=libc++ -arch x86_64" linkflags="-stdlib=libc++" \
     include=/Applications/Autodesk/maya2017/Maya.app/Contents/Frameworks/Python.framework/Versions/2.7/include/python2.7 \
     link=shared threading=multi stage

echo;echo;echo
echo Finished building boost for OSX as shared dylibs
echo;echo;echo
