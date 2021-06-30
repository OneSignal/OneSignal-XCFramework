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
          url: "https://github.com/OneSignal/OneSignal-iOS-SDK/releases/download/3.5.3/OneSignal.xcframework.zip",
          checksum: "e8c549b06635900c7a61d0890d393875fd3fd890f91e9bbd0960765718b61d92"
        )
    ]
)
