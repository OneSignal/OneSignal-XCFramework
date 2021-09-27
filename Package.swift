// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OneSignalFinalLib",
    products: [
        .library(
            name: "OneSignalFinalLib",
            targets: ["OneSignalFinalLib"]),
    ],
    targets: [
        .binaryTarget(
          name: "OneSignalSharedTest",
          path: "OneSignal.xcframework"
        ),
        .binaryTarget(
          name: "OneSignalSwiftTest",
          path: "OneSignalSwift.xcframework"
        ),
        .target(name: "OneSignalFinalLib",
                dependencies: [
                    .target(name: "OneSignalSharedTest"),
                    .target(name: "OneSignalSwiftTest")
                ],
                path: "OneSignalFinal"
        )
    ]
)
