
call bootstrap.bat
copy bbc-config-win-shared.jam project-config.jam

echo
echo To build boost DLLs for VS2015, x86:
echo b2 --toolset=msvc-14.0 --build-type=complete stage link=shared
echo
echo Building boost DLLs for VS2015, x64
echo
b2 -j 16 --toolset=msvc-14.0 --build-type=complete architecture=x86 address-model=64 stage link=shared
