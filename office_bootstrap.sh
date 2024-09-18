#! /bin/bash
# With contributions from Ian McDowell: https://github.com/IMcD23

# Bail out on error
set -e


build_llvm=`pwd`/build-llvm
build_clang=`pwd`/build-clang
installprefix=`pwd`/install
llvm=`pwd`/llvm
clang=`pwd`/clang
mkdir -p $build_llvm
mkdir -p $installprefix

# cmake -G Ninja -S $llvm/llvm -B $build_llvm \
#       -DLLVM_INSTALL_UTILS=ON \
#       -DCMAKE_INSTALL_PREFIX=$installprefix \
#       -DCMAKE_BUILD_TYPE=Release
echo "cmake lllvm……"
cmake -G Ninja -S $llvm -B $build_llvm \
      -DCMAKE_MACOSX_RPATH=ON \
      -DLLVM_ENABLE_PROJECTS="libcxx;libcxxabi;clang" \
      -DLLVM_BUILD_EXTERNAL_COMPILER_RT=ON \
      -DLLVM_BUILD_LLVM_DYLIB=ON \
      -DLLVM_ENABLE_EH=ON \
      -DLLVM_ENABLE_RTTI=ON \
      -DCMAKE_INSTALL_PREFIX=$installprefix \

ninja -C $build_llvm install

echo "cmake lllvm xcframework"

# XCFramework
cmake --build $build_llvm --target LLVMFramework-iOS -- -configuration Release

ls $build_llvm/lib/

zip -r build_llvm_ios.zip $build_llvm -r 

cmake --build $build_llvm --target LLVMFramework-macOS -- -configuration Release

ls $build_llvm/lib/

zip -r build_llvm_mac.zip $build_llvm -r 

# echo "cmake clang"

# cmake -G Ninja -S $clang -B $build_clang \
#       -DLLVM_EXTERNAL_LIT=$build_llvm/utils/lit \
#       -DLLVM_ROOT=$installprefix

# ninja -C $build_clang


# echo "cmake clang xcframework"

# # XCFramework
# cmake --build $build_clang --target ClangFramework-iOS -- -configuration Release

# ls $build_clang

# zip -r build_clang.zip $build_clang -r 

# cmake --build $build_clang --target ClangFramework-macOS -- -configuration Release

# ls $build_clang

# zip -r build_llvm_mac.zip $build_llvm -r 



# zip -r build_llvm.zip $build_llvm -r 
# zip -r build_clang.zip $build_clang -r 
