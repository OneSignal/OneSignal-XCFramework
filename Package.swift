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
          url: "https://github.com/OneSignal/OneSignal-iOS-SDK/releases/download/3.6.0/OneSignal.xcframework.zip",
          checksum: "354a0e0bb84ec6e709dc53f1b7b7c7c468fa750201219bc6e0b5ff8d954350b7"
        )
    ]
)
