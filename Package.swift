// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VaporSMTPKit",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "VaporSMTPKit",
            targets: ["VaporSMTPKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/DamonHu/SMTPKitten.git", from: "0.1.8"),
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
    ],
    targets: [
        .target(
            name: "VaporSMTPKit",
            dependencies: [
                .product(name: "SMTPKitten", package: "SMTPKitten"),
                .product(name: "Vapor", package: "vapor")
            ]),
    ]
)
