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
            checksum: "2324599f8b382c35ac185a0ff0cc66870372e6f5e17ba1558f972cdc185f1d9b"
        ),
        .binaryTarget(
            name: "lld",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/lld.xcframework.zip",
            checksum: "b9bda95e780a402b79f95d05af04ae655757a433441a673f0de51ad1c9b4eaaa"
        ),
        .binaryTarget(
            name: "llc",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/llc.xcframework.zip",
            checksum: "5db6d552637b332095e446ab87dd6688237723c483aed1770d66b0ad408bfd59"
        ),
        .binaryTarget(
            name: "clang",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/clang.xcframework.zip",
            checksum: "735a1024e2be56d2509f7901ca6568abf60082295088af110d8159079f2f4492"
        ),
        .binaryTarget(
            name: "dis",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/dis.xcframework.zip",
            checksum: "5782bdc12ac79ee4bf7a89ba1939af21890ff4971989da8d917e17907f8f7e28"
        ),
        .binaryTarget(
            name: "libLLVM",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/libLLVM.xcframework.zip",
            checksum: "aa9ff2f52f92d58d1efc038d4ca5c47496d811f8326713213de9b3b52817e4cf"
        ),
        .binaryTarget(
            name: "link",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/link.xcframework.zip",
            checksum: "ac853d12fe438f1607a37a5b5c8f50375f068eeb58888058059fb12dc748082b"
        ),
        .binaryTarget(
            name: "lli",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/lli.xcframework.zip",
            checksum: "9a7217b7c2ec1466da1e63e32ba88bbdfe80109a59a3cbbbc40bafb452970e6a"
        ),
        .binaryTarget(
            name: "nm",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/nm.xcframework.zip",
            checksum: "027873452b881e1f186ae08d182492f9f09e4edf5657704abfdd4bb1fc3eb2d3"
        ),
        .binaryTarget(
            name: "opt",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/opt.xcframework.zip",
            checksum: "668e6e3dba1f553e9d6e7e8f425730b864b7e5030caf0a67cfb96025bba1d5ef"
        )
    ]
)



/* Merging into xcframeworks: 
 */
