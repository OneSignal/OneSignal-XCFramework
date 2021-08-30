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
          url: "https://github.com/OneSignal/OneSignal-iOS-SDK/releases/download/3.7.0/OneSignal.xcframework.zip",
          checksum: "bec3c1f0fe64c3015045131e6fc2f398cbc765b031136dc46a8afc18ddd5de90"
        )
    ]
)
