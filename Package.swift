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
          url: "https://github.com/OneSignal/OneSignal-iOS-SDK/releases/download/3.2.1/OneSignal.xcframework.zip",
          checksum: "0d0c7822d87afc9e87fe2a7389729ee8b07d3a078075e966ffdec117c1b8c893"
        )
    ]
)
