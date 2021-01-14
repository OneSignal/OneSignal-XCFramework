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
          url: "https://github.com/OneSignal/OneSignal-XCFramework/releases/download/3.1.0/OneSignal.xcframework.zip",
          checksum: "3f36d8f8f3bde549ae4409972b09088fe969c1845d3419dccf2e8a56ebeac25f"
        )
    ]
)
