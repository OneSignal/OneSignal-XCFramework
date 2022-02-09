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
          url: "https://github.com/OneSignal/OneSignal-iOS-SDK/releases/download/3.10.1/OneSignal.xcframework.zip",
          checksum: "cd2977f8f94ba6d5763746911d10b0633ff577508d18e79fe5eaf76f326a8324"
        )
    ]
)
