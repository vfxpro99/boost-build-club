
./bootstrap.sh

cp boost-build-club-project-config.jam project-config.jam

echo \n\n\n
echo Building boost for iOS
echo \n\n\n

# Following Pete Goodliffe, invent a missing header.
#
# These files are missing in the ARM iPhoneOS SDK, but they are in the simulator.
# They are supported on the device, so we copy them from x86 SDK to a staging area
# to use them on ARM, too.
cp $XCODE_ROOT/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator${IPHONE_SDKVERSION}.sdk/usr/include/{crt_externs,bzlib}.h $BOOST_SRC

: ${IPHONE_SDKVERSION:=6.0}
./bjam -j16 --build-dir=build-iOS     --stagedir=stage-iOS     toolset=darwin architecture=arm target-os=iphone macosx-version=iphone-${IPHONE_SDKVERSION}    define=_LITTLE_ENDIAN link=static stage
./bjam -j16 --build-dir=build-iOS-sim --stagedir=stage-iOS-sim toolset=darwin architecture=x86 target-os=iphone macosx-version=iphonesim-${IPHONE_SDKVERSION} link=static stage
