// swift-tools-version: 5.4

import PackageDescription

let package = Package(
    name: "Compatible Loading Indicator",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Compatible Loading Indicator",
            targets: ["Compatible Loading Indicator"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Compatible Loading Indicator",
            dependencies: []),
        .testTarget(
            name: "Compatible Loading IndicatorTests",
            dependencies: ["Compatible Loading Indicator"]),
    ]
)
