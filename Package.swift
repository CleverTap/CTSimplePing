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
            checksum: "f3519609b70e956081cff765dffbb6ffb505ad2fbeadf40ce9fea3562fe7ae40"
        )
    ]
)
