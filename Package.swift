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
            checksum: "c849d0a17cc96874d658626e7c630072914a4b49e721a5b4004e7ba7015a756a"
        ),
        .binaryTarget(
            name: "lld",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/lld.xcframework.zip",
            checksum: "3a2f0f13c281e17b2142e79b172837897fdc37ee21fda231af480b26dba1c869"
        ),
        .binaryTarget(
            name: "llc",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/llc.xcframework.zip",
            checksum: "41b60198fae46c6b9f37a9e6bf64d8a8fdd6d5e4b5bdf965fa7e85a7d109b5af"
        ),
        .binaryTarget(
            name: "clang",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/clang.xcframework.zip",
            checksum: "80bf2d12a6b92b3f2360f62264d13564f136ff3a6801e4b52a562168e6e6dba4"
        ),
        .binaryTarget(
            name: "dis",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/dis.xcframework.zip",
            checksum: "c722a48a49ea045c8a0d5349d8543f9211b16b5e11321411b289dcd32cf66c4e"
        ),
        .binaryTarget(
            name: "libLLVM",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/libLLVM.xcframework.zip",
            checksum: "4d1d912b06381dc0ffcb5148e4263dcdab9db86f32aa1afbbb1028ac5959f9ca"
        ),
        .binaryTarget(
            name: "link",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/link.xcframework.zip",
            checksum: "f52cfd322267fa534136aac2637b5fa794762d61779361169d7afb9f9a22c0de"
        ),
        .binaryTarget(
            name: "lli",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/lli.xcframework.zip",
            checksum: "4b7fd68f7e1e92cf0a731e588da074a090d4d075270016d0578b527c6fa5a964"
        ),
        .binaryTarget(
            name: "nm",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/nm.xcframework.zip",
            checksum: "d63c4d5745dbeb315e94c8e80cc802469d1ec8cb55bc1bdc0e2f990893e52c8c"
        ),
        .binaryTarget(
            name: "opt",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/opt.xcframework.zip",
            checksum: "28a908e363b6c91caf45c9cc4f139fa7128a1336684066ee31410ccec9074b3e"
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
