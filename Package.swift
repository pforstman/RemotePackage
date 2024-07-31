// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RemotePackage",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "RemotePackage",
            targets: ["RemotePackage", "StaticFramework"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "RemotePackage"),
        .binaryTarget(
            name: "StaticFramework",
            url: "https://raw.githubusercontent.com/pforstman/FrameworkProject/Release/1/0/3/StaticFramework.xcframework.zip",
            checksum: "dedfeab89d81b5cece072498ba8f1d426110a026d0cef02a4116b769d52039e3"
        ),
        .testTarget(
            name: "RemotePackageTests",
            dependencies: ["RemotePackage"]),
    ]
)
