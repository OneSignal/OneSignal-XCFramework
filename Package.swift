// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OneSignal",
    products: [
        .library(
            name: "OneSignal",
            targets: ["OneSignalWrapper"]),
        .library(
            name: "OneSignalExtension",
            targets: ["OneSignalExtensionWrapper"]),
            .library(
            name: "OneSignalLocation",
            targets: ["OneSignalLocationWrapper"]),
    ],
    targets: [
        .binaryTarget(
          name: "OneSignal",
          path: "OneSignal.xcframework"
        ),
        .binaryTarget(
          name: "OneSignalCore",
          path: "OneSignalCore.xcframework"
        ),
        .binaryTarget(
          name: "OneSignalLocation",
          path: "OneSignalLocation.xcframework"
        ),
        .binaryTarget(
          name: "OneSignalExtension",
          path: "OneSignalExtension.xcframework"
        ),
        .target(name: "OneSignalWrapper",
                dependencies: [
                    .target(name: "OneSignal"),
                    .target(name: "OneSignalCore")
                    .target(name: "OneSignalExtension")
                ],
                path: "OneSignalWrapper"
        )
        .target(name: "OneSignalExtensionWrapper",
                dependencies: [
                    .target(name: "OneSignalCore")
                    .target(name: "OneSignalExtension")
                ],
                path: "OneSignalExtensionWrapper"
        )
        .target(name: "OneSignalLocationWrapper",
                dependencies: [
                    .target(name: "OneSignalCore")
                    .target(name: "OneSignalLocation")
                ],
                path: "OneSignalLocationWrapper"
        )
    ]
)

