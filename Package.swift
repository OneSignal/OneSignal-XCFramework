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
          url: "https://github.com/OneSignal/OneSignal-iOS-SDK/releases/download/3.8.1/OneSignal.xcframework.zip",
          checksum: "8fe90db8914c3459db1c65de6fef6e8c87a4cebe463163d29e35690b2063e4f2"
        )
    ]
)
