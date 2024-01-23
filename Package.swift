// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "VenariAI",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "VenariAI",
            targets: ["VenariAI"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "VenariAI",
            dependencies: []
        )
  ]
)
