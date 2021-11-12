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
          url: "https://github.com/OneSignal/OneSignal-iOS-SDK/releases/download/3.9.0/OneSignal.xcframework.zip",
          checksum: "754721e05bfcf5be2dbf9e77cd1833448b0efb0ded12e33d599864b113e5ab09"
        )
    ]
)
