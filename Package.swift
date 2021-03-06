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
          url: "https://github.com/OneSignal/OneSignal-iOS-SDK/releases/download/3.2.3/OneSignal.xcframework.zip",
          checksum: "7ee04ac60f10323c684814344e73e47526ab84d1e6512ba50d9fee33a30469d5"
        )
    ]
)
