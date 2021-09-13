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
          url: "https://github.com/OneSignal/OneSignal-iOS-SDK/releases/download/3.8.0/OneSignal.xcframework.zip",
          checksum: "547fee80d9263fc1bf5484c9a311e582d4df23941f7ff16261af427dd8f0442e"
        )
    ]
)
