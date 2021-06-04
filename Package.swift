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
          url: "https://github.com/OneSignal/OneSignal-iOS-SDK/releases/download/3.5.1/OneSignal.xcframework.zip",
          checksum: "70d4d41b84731cf6ae1e27e85cf33b39351ab44c16949afecab48c051f74ae0a"
        )
    ]
)
