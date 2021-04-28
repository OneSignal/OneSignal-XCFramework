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
          url: "https://github.com/OneSignal/OneSignal-iOS-SDK/releases/download/3.4.2/OneSignal.xcframework.zip",
          checksum: "3a94b76fd662d6efc8f814d3885ed2f8510b9b50a7946c52e6b187d95755b556"
        )
    ]
)
