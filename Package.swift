// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "nkeys.swift",
    platforms: [
        .watchOS(.v6)
    ], products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "nkeys.swift",
            targets: ["nkeys.swift"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "nkeys.swift"),
        .testTarget(
            name: "nkeys.swiftTests",
            dependencies: ["nkeys.swift"]),
    ]
)
