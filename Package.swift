// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OneSignalXCFramework",
    products: [
        .library(
            name: "OneSignal",
            targets: ["OneSignal"]),
    ],
    targets: [
        .binaryTarget(
          name: "OneSignal",
          url: "https://github.com/OneSignal/OneSignal-iOS-SDK/releases/download/3.4.3/OneSignal.xcframework.zip",
          checksum: "f8f80b63deec4963cc34c3650f16c653de8ba5065988007b37e29f4ce5778dc8"
        )
    ]
)
