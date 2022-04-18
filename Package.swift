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
          url: "https://github.com/OneSignal/OneSignal-iOS-SDK/releases/download/3.10.3/OneSignal.xcframework.zip",
          checksum: "1db61d448584500ce9f771ba84a394f6617c88a1a9455bd48bfd79f23d7f88a9"
        )
    ]
)
