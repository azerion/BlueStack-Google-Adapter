// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BlueStackGoogleAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "BlueStackGoogleAdapter",
            targets: ["BlueStackGoogleAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/azerion/BlueStackSDK.git", from: "5.3.0"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads", .upToNextMajor(from: "12.0.0"))
    ],
    targets: [
        .target(
            name: "BlueStackGoogleAdapterTarget",
            dependencies: [
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                .target(name: "BlueStackGoogleAdapter", condition: .when(platforms: [.iOS])),
                .product(name: "BlueStackSDK", package: "BlueStackSDK", condition: .when(platforms: [.iOS]))
            ],
            path: "BlueStackGoogleAdapterWrapper"
        ),
        .binaryTarget(
            name: "BlueStackGoogleAdapter",
            path: "BlueStackGoogleAdapter.xcframework"
        )
    ]
)