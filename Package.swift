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
          url: "https://github.com/OneSignal/OneSignal-iOS-SDK/releases/download/3.10.0/OneSignal.xcframework.zip",
          checksum: "23dcef2d54e70fca28d7ea26bce24e001d5f45315e07ee377a8236223e40274d"
        )
    ]
)
