// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "flutter_native_image_v2",
    platforms: [.iOS(.v15)],
    products: [.library(name: "flutter-native-image-v2", targets: ["flutter_native_image_v2"])],
    dependencies: [.package(name: "FlutterFramework", path: "../FlutterFramework")],
    targets: [
        .target(
            name: "flutter_native_image_v2",
            dependencies: [.product(name: "FlutterFramework", package: "FlutterFramework")],
            publicHeadersPath: "include",
            cSettings: [.headerSearchPath("include/flutter_native_image_v2")],
            linkerSettings: [.linkedFramework("UIKit"), .linkedFramework("ImageIO")]
        )
    ]
)
