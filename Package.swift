// swift-tools-version:5.4
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
          url: "https://github.com/OneSignal/OneSignal-XCFramework/releases/download/test/OneSignal.xcframework.zip",
          checksum: "3f229fbcd336a908383da2c265e6d797aa0cf9c5a09c67aa246a42b224e05106"
        )
    ]
)
