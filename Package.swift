// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "nkeys.swift",
    platforms: [
        .watchOS(.v6),
        .macOS(.v10_15)
    ],

    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "nkeys.swift",
            targets: ["nkeys.swift"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/Jarema/Base32",
            branch: "main"
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "nkeys.swift",
            dependencies: [
                .product(name: "Base32", package: "Base32")
            ]
        ),

        .testTarget(
            name: "nkeys.swiftTests",
            dependencies: ["nkeys.swift"]),
    ]
)
