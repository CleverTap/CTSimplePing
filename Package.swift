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
            url: "https://github.com/CleverTap/CTSimplePing/releases/download/1.0.2/CTSimplePing.xcframework.zip",
            checksum: "113b8c442e324cd5da05ebeda8b97a1fc78fb574d86bfd4d39bb0d35bacf52f2"
        )
    ]
)
