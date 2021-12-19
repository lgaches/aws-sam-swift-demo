// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Demo",
    platforms: [
        .macOS(.v12),
    ],
    products: [
        .executable(name: "HelloWorld", targets: ["HelloWorld"]),
        .executable(name: "Greeting", targets: ["Greeting"]),
    ],
    dependencies: [
        .package(url: "https://github.com/swift-server/swift-aws-lambda-runtime.git", branch: "main"),
        .package(url: "https://github.com/swift-server/swift-aws-lambda-events.git", branch: "main"),
    ],
    targets: [
        .executableTarget(name: "HelloWorld", dependencies: [
            .product(name: "AWSLambdaRuntime", package: "swift-aws-lambda-runtime"),
            .product(name: "AWSLambdaEvents", package: "swift-aws-lambda-events"),
        ]),
        .executableTarget(name: "Greeting", dependencies: [
            .product(name: "AWSLambdaRuntime", package: "swift-aws-lambda-runtime"),
            .product(name: "AWSLambdaEvents", package: "swift-aws-lambda-events"),
        ]),
    ]
)
