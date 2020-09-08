// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "SwinjectPropertyLoader",
    platforms: [.macOS(.v10_12), .iOS(.v10), .tvOS(.v9), .watchOS(.v2)],
    products: [
        .library(name: "SwinjectPropertyLoader", targets: ["SwinjectPropertyLoader"]),
    ],
    dependencies: [
        .package(name: "Swinject", url: "https://github.com/Swinject/Swinject", from: "2.7.1"),
        .package(name: "Quick", url: "https://github.com/Quick/Quick", from: "2.2.1"),
        .package(name: "Nimble", url: "https://github.com/Quick/Nimble", from: "8.1.2")
    ],
    targets: [
        .target(
            name: "SwinjectPropertyLoader",
            dependencies: ["Swinject", "Quick"],
            path: "Sources"
        ),
    ]
)
