// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OneSignalFinal",
    products: [
        .library(
            name: "OneSignalFinal",
            targets: ["OneSignalFinal"]),
    ],
    targets: [
        .binaryTarget(
          name: "OneSignalShared",
          path: "OneSignal.xcframework"
        ),
        .binaryTarget(
          name: "OneSignalSwift",
          path: "OneSignalSwift.xcframework"
        ),
        .target(name: "OneSignalFinal",
                dependencies: [
                    .target(name: "OneSignalShared"),
                    .target(name: "OneSignalSwift")
                ],
                path: "OneSignalFinal"
        )
    ]
)
