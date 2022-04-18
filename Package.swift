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
          url: "https://github.com/OneSignal/OneSignal-iOS-SDK/releases/download/3.10.2/OneSignal.xcframework.zip",
          checksum: "b17aca2cb03bac87be5a219903eedda2ce3430c99949ce340fc00450b37c0a67"
        )
    ]
)
