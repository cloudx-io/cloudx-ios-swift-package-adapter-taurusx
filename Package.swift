// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "CloudXTaurusXAdapter",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "CloudXTaurusXAdapter",
            targets: ["CloudXTaurusXAdapterPackage"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-core.git",
            from: "3.9.1"
        ),
        .package(
            url: "https://github.com/taurusxteam/taurusx-ads-sdk-ios.git",
            exact: "1.18.2"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "CloudXTaurusXAdapter",
            url: "https://github.com/cloudx-io/cloudx-ios-swift-package-adapter-taurusx/releases/download/binary/1180201.0.0/CloudXTaurusXAdapter.xcframework.zip",
            checksum: "14cbd8ee1ec5e8084e5cc8ef46dcc5364cad14fc235b62f4ec74d324f1271502"
        ),
        .target(
            name: "CloudXTaurusXAdapterPackage",
            dependencies: [
                "CloudXTaurusXAdapter",
                .product(name: "CloudXCore", package: "cloudx-ios-swift-package-core"),
                .product(name: "TaurusxAdsSDK", package: "taurusx-ads-sdk-ios"),
            ]
        ),
        .testTarget(
            name: "CloudXTaurusXAdapterSwiftTests",
            dependencies: ["CloudXTaurusXAdapterPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
        .testTarget(
            name: "CloudXTaurusXAdapterObjCTests",
            dependencies: ["CloudXTaurusXAdapterPackage"],
            linkerSettings: [.unsafeFlags(["-Xlinker", "-ObjC"])]
        ),
    ]
)
