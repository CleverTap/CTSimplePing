// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CTSimplePing",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "CTSimplePing",
            targets: ["CTSimplePing"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "CTSimplePing",
            url: "https://github.com/CleverTap/CTSimplePing/releases/download/1.0.0/CTSimplePing.xcframework.zip",
            checksum: "e5d34966b964d2659179da8f3d1a6a0d32450df54a8137d3573b386287d53148"
        )
    ]
)
