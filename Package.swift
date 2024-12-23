// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "SVGKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "SVGKit",
            targets: ["SVGKit"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/CocoaLumberjack/CocoaLumberjack.git", .upToNextMajor(from: "3.7.0"))
    ],
    targets: [
        .target(
            name: "SVGKit",
            dependencies: [
                "CocoaLumberjack"
            ],
            path: "Source",
            resources: [.process("Resources/PrivacyInfo.xcprivacy")],
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("privateHeaders"),
                .define("NS_BLOCK_ASSERTIONS", to: "1", .when(configuration: .release))
            ]
        )
    ]
)
