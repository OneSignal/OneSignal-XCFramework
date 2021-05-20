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
          url: "https://github.com/OneSignal/OneSignal-iOS-SDK/releases/download/3.4.4/OneSignal.xcframework.zip",
          checksum: "cacd9c7389ac583ba424637de543ec88a280bcd29f7f3386cb4538ead1487d09"
        )
    ]
)
