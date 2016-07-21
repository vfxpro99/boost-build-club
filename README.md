boost-build-club is for people who need to build boost!
-------------------------------------------------------

Boost is built using a proprietary build system called bjam. The documentation for the
system is written in the classic mold of telling you everything, yet nothing at the same 
time. There are dozens of pages explaining the myriad of command line options and 
configuration file syntax elements, but no pages explaining how those work together to
create a functional build for your platform.

For that, we need to turn to internet searches and forums, where we find occasional
correct instructions, and more often not, instructions are for one of the 
previous versions jam with incompatible syntax or changed options. Forum instructions
also are frequently oriented towards answering one peculiar problem faced by an 
individual with an unusual set up. There are few pages addressing the general problem
of simply building the whole library for a particular platform and compiler.

The goal of boost-build-club is to have a simple script per platform that properly
generates all of the libraries in a consistent way.

Where you come in!
------------------

boost-build-club is for people who build boost successfully, and if you found this page, 
hopefully that will soon include you. At the moment, these scripts work for me, and
ideally you can bring your own experience to the table and help improve these scripts.

Together we can wrest building boost away from the elite priesthood and make a reliable
and clean boost build something achievable by us all!

Usage
-----
First, copy the contents of this directory into your boost source root, the same directory
that contains boost's bootstrap scripts. cd into that directory, and then:

- For OSX/iOS, chmod the appropriate shell script to allow execution, then run ./build-iOS.sh or ./build-OSX.sh - these will create static versions of
  the libraries.
- For Windows, run build-win-shared.bat or build-win-static.bat
- For other platforms, please send me a pull request!

The built libraries will appear in a staging directory with a platform specific name such
as stage-OSX or whatever.

Acknowledgements
----------------
Some points borrowed from Pete Goodliffe's original build script,
some corrections borrowed from this gist -
https://gist.github.com/faithfracture/c629ae4c7168216a9856

