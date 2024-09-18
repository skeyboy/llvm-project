#! /bin/bash
# With contributions from Ian McDowell: https://github.com/IMcD23

# Bail out on error
set -e

LLVM_SRCDIR=$(pwd)
OSX_BUILDDIR=$(pwd)/build_osx
IOS_BUILDDIR=$(pwd)/build-iphoneos
SIM_BUILDDIR=$(pwd)/build-iphonesimulator

echo "Downloading ios_system Framework:"
IOS_SYSTEM_VER="v3.0.0"
HHROOT="https://github.com/holzschu"

echo "Downloading header file:"
curl -OL $HHROOT/ios_system/releases/download/$IOS_SYSTEM_VER/ios_error.h 

echo "Downloading ios_system Framework:"
rm -rf ios_system.xcframework
curl -OL $HHROOT/ios_system/releases/download/$IOS_SYSTEM_VER/ios_system.xcframework.zip
unzip ios_system.xcframework.zip
rm ios_system.xcframework.zip

OSX_SDKROOT=$(xcrun --sdk macosx --show-sdk-path)
IOS_SDKROOT=$(xcrun --sdk iphoneos --show-sdk-path)
SIM_SDKROOT=$(xcrun --sdk iphonesimulator --show-sdk-path)

# Parse arguments
for i in "$@"
do
case $i in
  -c|--clean)
    CLEAN=YES
  shift
  ;;
  *)
    # unknown option
  ;;
esac
done

# compile for OSX (about 1h, 1GB of disk space)
echo "Compiling for OSX:"
if [ $CLEAN ]; then
  rm -rf $OSX_BUILDDIR
fi
if [ ! -d $OSX_BUILDDIR ]; then
  mkdir $OSX_BUILDDIR
fi
# building with -DLLVM_LINK_LLVM_DYLIB (= single big shared lib) 
# Easier to make a framework with
# libc; impossible to configure
pushd $OSX_BUILDDIR
cmake -G Ninja \
-DLLVM_TARGETS_TO_BUILD="AArch64;X86;WebAssembly" \
-DLLVM_ENABLE_PROJECTS='clang;compiler-rt;lld;flang;openmp' \
-DLLVM_LINK_LLVM_DYLIB=ON \
-DCMAKE_BUILD_TYPE=Release \
-DCMAKE_OSX_SYSROOT=${OSX_SDKROOT} \
-DCMAKE_C_COMPILER=$(xcrun --sdk macosx -f clang) \
-DCMAKE_CXX_COMPILER=$(xcrun --sdk macosx -f clang++) \
-DCMAKE_ASM_COMPILER=$(xcrun --sdk macosx -f cc) \
-DCMAKE_LIBRARY_PATH=${OSX_SDKROOT}/lib/ \
-DCMAKE_INCLUDE_PATH=${OSX_SDKROOT}/include/ \
../llvm
ninja
popd


zip -r build_osx.zip $OSX_SDKROOT -r 
