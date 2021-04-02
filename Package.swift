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
          url: "https://github.com/OneSignal/OneSignal-iOS-SDK/releases/download/3.4.0/OneSignal.xcframework.zip",
          checksum: "be2b9884a84fb2dfd024badee7290eee3e6794baea8cf741e8ae4f9f69f6fe01"
        )
    ]
)
