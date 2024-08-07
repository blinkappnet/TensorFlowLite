// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TensorFlowLite",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "TensorFlowLite",
            targets: [
                "TensorFlowLiteC",
                "TensorFlowLite"
            ]
        ),
    ],
    targets: [
        .target(
            name: "TensorFlowLite",
            linkerSettings: [.linkedLibrary("c++")]
        ),
        .binaryTarget(
            name: "TensorFlowLiteC",
            url: "https://github.com/blinkappnet/TensorFlowLite/releases/download/0.1.0/TensorFlowLiteC.xcframework.zip",
            checksum: "244557e3b4c7612a074956d9d041eb4691e47a12520829ef6130c414c0b0423e"
        )
    ]
)
