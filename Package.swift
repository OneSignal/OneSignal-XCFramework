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
          url: "https://github.com/OneSignal/OneSignal-iOS-SDK/releases/download/3.9.1/OneSignal.xcframework.zip",
          checksum: "d6a254e033f98e703820247df8d869e8cbe4bd3a6fcb590892dc9a8283072108"
        )
    ]
)
