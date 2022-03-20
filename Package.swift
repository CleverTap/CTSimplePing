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
            checksum: "407f74b2c02e1c9138df29187464e8237ec869b2dd97f1e0cefdb361a131c98e"
        )
    ]
)
