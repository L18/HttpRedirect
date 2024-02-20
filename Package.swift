// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
// Swift Package: HttpRedirectIos

import PackageDescription;

let package = Package(
    name: "HttpRedirectIos",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "HttpRedirectIos",
            targets: ["HttpRedirectIos"]
        )
    ],
    dependencies: [ ],
    targets: [
        .binaryTarget(name: "RustFramework", path: "./RustFramework.xcframework"),
        .target(
            name: "HttpRedirectIos",
            dependencies: [
                .target(name: "RustFramework")
            ]
        ),
    ]
)