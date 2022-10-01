// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "DoccSnippetExample",
    products: [
        .library(
            name: "DoccSnippetExample",
            targets: ["DoccSnippetExample"]),
    ],
    dependencies: [
        //.package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0")
        .package(url: "https://github.com/apple/swift-docc-plugin", branch: "main")
    ],
    targets: [
        .target(
            name: "DoccSnippetExample",
            dependencies: []),
        .testTarget(
            name: "DoccSnippetExampleTests",
            dependencies: ["DoccSnippetExample"]),
    ]
)
