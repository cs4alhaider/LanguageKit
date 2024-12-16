// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LanguageKit",
    platforms: [
        .iOS(.v16)
    ],
    products: [
      .library(
            name: "LanguageKit",
            targets: ["LanguageKit"]),
    ],
    targets: [
      .target(name: "LanguageKit"),
    ]
)
