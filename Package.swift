// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUIColorPicker",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(name: "SwiftUIColorPicker", targets: ["SwiftUIColorPicker"])
    ],
    dependencies: [
        .package(url: "https://github.com/spacenation/swiftui-grid", from: "1.1.0"),
    ],
    targets: [
        .target(name: "SwiftUIColorPicker", dependencies: [.product(name: "Grid", package: "Grid")])
    ]
)

