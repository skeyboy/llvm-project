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
            checksum: "5a57c35a5574d6f7abc7a26f13ff9d44ceb837f2e1e93195a64de840601a72dc"
        ),
        .binaryTarget(
            name: "lld",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/lld.xcframework.zip",
            checksum: "6f29ff5781e47da712acf1bf5f6e9bec375ee0cbe096bfd5e87b41917003cf78"
        ),
        .binaryTarget(
            name: "llc",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/llc.xcframework.zip",
            checksum: "dfe415ccb4de0ca3150da566bb642fb698ef4482f62947133f15a809b979c704"
        ),
        .binaryTarget(
            name: "clang",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/clang.xcframework.zip",
            checksum: "5beee49166f19bbbd2661fa4780a9fac2224a3ef083c17a768bfab31dfd1a083"
        ),
        .binaryTarget(
            name: "dis",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/dis.xcframework.zip",
            checksum: "587cb7b16f826b949fc2c65b7d92460e498a95d4ca194bd962d1776da674a50b"
        ),
        .binaryTarget(
            name: "libLLVM",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/libLLVM.xcframework.zip",
            checksum: "7609369830ece09e9deb9be6b0afdf6cc01560e928b8d2e9f0227e1562f8993d"
        ),
        .binaryTarget(
            name: "link",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/link.xcframework.zip",
            checksum: "63cc448e197dd7426b3fdf414ce2f9844ae09e1a8e35feb67a0d74a528b0c434"
        ),
        .binaryTarget(
            name: "lli",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/lli.xcframework.zip",
            checksum: "0012ebfffa424ac15c6d02cc698b69eaf914e142313e5339f92cf186c55f7fea"
        ),
        .binaryTarget(
            name: "nm",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/nm.xcframework.zip",
            checksum: "2e7f1ab7286ed14d2f1f7d60e1f1a335b9d73a9c1fb0efe7d102f6c1e9198d63"
        ),
        .binaryTarget(
            name: "opt",
            url: "https://github.com/holzschu/llvm-project/releases/download/1.0/opt.xcframework.zip",
            checksum: "7f1c8dcd233c2d31678a3896a7213eae6c5d19544bb69965c07d779756ba2026"
        )
    ]
)



/* Merging into xcframeworks:
 */
