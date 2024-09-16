rm -rf checksum.txt
echo "LLVM_Intel.xcframework.zip" >> checksum.txt
echo $(pwd)
shasum -a 256 LLVM_Intel.xcframework.zip | sed 's/ .*//' >> checksum.txt

echo "LLVM_M1.xcframework.zip" >> checksum.txt
shasum -a 256  LLVM_M1.xcframework.zip  | sed 's/ .*//' >> checksum.txt
