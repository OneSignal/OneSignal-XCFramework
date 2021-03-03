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
          url: "https://github.com/OneSignal/OneSignal-iOS-SDK/releases/download/3.2.2/OneSignal.xcframework.zip",
          checksum: "324c29a519c0d7a859ba51ae77a094d0a4d99b82f1fb04a9d4701a0b30f77467"
        )
    ]
)
