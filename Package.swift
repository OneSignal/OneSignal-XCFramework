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
          url: "https://github.com/OneSignal/OneSignal-iOS-SDK/releases/download/3.5.2/OneSignal.xcframework.zip",
          checksum: "048af713dbb6a6ae8e32f832b9400ec5cf70950b173d7ef9f09e0d1f79d19075"
        )
    ]
)
