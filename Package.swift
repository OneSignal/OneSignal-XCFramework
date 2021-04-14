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
          url: "https://github.com/OneSignal/OneSignal-iOS-SDK/releases/download/3.4.1/OneSignal.xcframework.zip",
          checksum: "df3698da23ce74e7c3f6cf2c073c926e4d3567ac9dc0e6f9e8527b34f9ddebce"
        )
    ]
)
