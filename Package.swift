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
          url: "https://github.com/OneSignal/OneSignal-iOS-SDK/releases/download/3.1.0/OneSignal.xcframework.zip",
          checksum: "b7a4bd8bc44bdca452dd19055e7efa20bb3c889a246ad824ba49cd0cbc9b3d86"
        )
    ]
)
