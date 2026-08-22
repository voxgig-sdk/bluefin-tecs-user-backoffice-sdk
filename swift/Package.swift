// swift-tools-version:5.9
//
// BluefinTecsUserBackoffice SDK - SwiftPM manifest. The runtime itself is dependency-free
// (Foundation + the vendored Voxgig Struct port under
// Sources/ProjectNameSDK/Struct); declared feature/target deps (if any)
// appear below.
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
