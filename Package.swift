// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "llvm",
    products: [
        .library(name: "llvm", targets: ["ar", "lld", "llc", "clang", "dis", "libLLVM", "link", "lli", "nm", "opt"])
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "ar",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/ar.xcframework.zip",
            checksum: "bd9a798136eaccf6eb548065bd9cda8d08e6b4304b31041010dc852fdad0f0c5"
        ),
        .binaryTarget(
            name: "lld",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/lld.xcframework.zip",
            checksum: "70947a5e9c4c3779332879e1768f81fd4fcb5ab14133cf580850f75e909f32dd"
        ),
        .binaryTarget(
            name: "llc",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/llc.xcframework.zip",
            checksum: "0979caa054a9b8d6ce6115e3af88202c347bacc61a6f56ad1c1432c52d973dfb"
        ),
        .binaryTarget(
            name: "clang",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/clang.xcframework.zip",
            checksum: "b9477489e8f7fd5a2abd3c7d1bde96aa7afb58acac3767c68dcfd4e4573371a5"
        ),
        .binaryTarget(
            name: "dis",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/dis.xcframework.zip",
            checksum: "0946eb227531a7c0c455e05aa98b71438a2fa3ea14306734aa0afe168e596096"
        ),
        .binaryTarget(
            name: "libLLVM",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/libLLVM.xcframework.zip",
            checksum: "ae902d76ab04bcae0e54782eb123d91452fcfbbee5e7200813dcc4c38cee0487"
        ),
        .binaryTarget(
            name: "link",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/link.xcframework.zip",
            checksum: "7344eb79d43ec851c281d3a4bab77a6db671fa468b06a43843106350bd2ec9b5"
        ),
        .binaryTarget(
            name: "lli",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/lli.xcframework.zip",
            checksum: "bca9a7f2428b73a370f13e026826d18a4de49644637644628672cc42c76d1959"
        ),
        .binaryTarget(
            name: "nm",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/nm.xcframework.zip",
            checksum: "1820814bb7a66d35a751cf3bdb56e1643a4e834e07c6068fe4cf104f1932b3f4"
        ),
        .binaryTarget(
            name: "opt",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/opt.xcframework.zip",
            checksum: "3fde056ea4f49aab3be8023537221ef86dc72ab2a8d66e7042b6d58a640a8f29"
        )
    ]
)



/* Merging into xcframeworks: 
xcframework successfully written out to: /Users/holzschu/src/Xcode_iPad/llvm-project/ar.xcframework
bd9a798136eaccf6eb548065bd9cda8d08e6b4304b31041010dc852fdad0f0c5
xcframework successfully written out to: /Users/holzschu/src/Xcode_iPad/llvm-project/lld.xcframework
70947a5e9c4c3779332879e1768f81fd4fcb5ab14133cf580850f75e909f32dd
xcframework successfully written out to: /Users/holzschu/src/Xcode_iPad/llvm-project/llc.xcframework
0979caa054a9b8d6ce6115e3af88202c347bacc61a6f56ad1c1432c52d973dfb
xcframework successfully written out to: /Users/holzschu/src/Xcode_iPad/llvm-project/clang.xcframework
b9477489e8f7fd5a2abd3c7d1bde96aa7afb58acac3767c68dcfd4e4573371a5
xcframework successfully written out to: /Users/holzschu/src/Xcode_iPad/llvm-project/dis.xcframework
0946eb227531a7c0c455e05aa98b71438a2fa3ea14306734aa0afe168e596096
xcframework successfully written out to: /Users/holzschu/src/Xcode_iPad/llvm-project/libLLVM.xcframework
ae902d76ab04bcae0e54782eb123d91452fcfbbee5e7200813dcc4c38cee0487
xcframework successfully written out to: /Users/holzschu/src/Xcode_iPad/llvm-project/link.xcframework
7344eb79d43ec851c281d3a4bab77a6db671fa468b06a43843106350bd2ec9b5
xcframework successfully written out to: /Users/holzschu/src/Xcode_iPad/llvm-project/lli.xcframework
bca9a7f2428b73a370f13e026826d18a4de49644637644628672cc42c76d1959
xcframework successfully written out to: /Users/holzschu/src/Xcode_iPad/llvm-project/nm.xcframework
1820814bb7a66d35a751cf3bdb56e1643a4e834e07c6068fe4cf104f1932b3f4
xcframework successfully written out to: /Users/holzschu/src/Xcode_iPad/llvm-project/opt.xcframework
3fde056ea4f49aab3be8023537221ef86dc72ab2a8d66e7042b6d58a640a8f29

 */
