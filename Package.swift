// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CTSimplePing",
    platforms: [
        .iOS(.v12)
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
            url: "https://github.com/CleverTap/CTSimplePing/releases/download/1.0.1/CTSimplePing.xcframework.zip",
            checksum: "c1472db830a717aef2fd6c9f7b221c040dc085e12e63cf9fe3a2bdd4b11422d9"
        )
    ]
)
