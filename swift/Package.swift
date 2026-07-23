// swift-tools-version:5.9
//
// BluefinTecsUserBackoffice SDK - SwiftPM manifest. Zero runtime dependencies (Foundation +
// the vendored Voxgig Struct port under Sources/ProjectNameSDK/Struct).
import PackageDescription

let package = Package(
    name: "BluefinTecsUserBackofficeSdk",
    products: [
        .library(name: "BluefinTecsUserBackofficeSdk", targets: ["BluefinTecsUserBackofficeSdk"]),
    ],
    targets: [
        .target(
            name: "BluefinTecsUserBackofficeSdk",
            path: "Sources/ProjectNameSDK"),
        .testTarget(
            name: "BluefinTecsUserBackofficeSdkTests",
            dependencies: ["BluefinTecsUserBackofficeSdk"],
            path: "Tests/ProjectNameSDKTests"),
    ]
)
