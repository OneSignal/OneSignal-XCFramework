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
          url: "https://github.com/OneSignal/OneSignal-iOS-SDK/releases/download/3.6.1/OneSignal.xcframework.zip",
          checksum: "f6ec6f6f6182b8e0ca46eb68b8106cead7a710b7ac8b9b7749cfc672545e81e3"
        )
    ]
)
