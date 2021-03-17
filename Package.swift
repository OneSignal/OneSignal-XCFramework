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
          url: "https://github.com/OneSignal/OneSignal-iOS-SDK/releases/download/3.3.0/OneSignal.xcframework.zip",
          checksum: "fdb0227c8de19a27ebd8240afd1c2895bee6a9a345218d9b7b439ae6697a8b46"
        )
    ]
)
