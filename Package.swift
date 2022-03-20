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
            url: "https://github.com/CleverTap/CTSimplePing/releases/download/1.0.1/CTSimplePing.xcframework.zip",
            checksum: "5bc38e954bb4242d17d94b5b7a3578c76ff86d6e7c3cb1454341756fed6d8b3e"
        )
    ]
)
