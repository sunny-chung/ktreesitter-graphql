// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterGraphql",
    products: [
        .library(name: "TreeSitterGraphql", targets: ["TreeSitterGraphql"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ChimeHQ/SwiftTreeSitter", from: "0.8.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterGraphql",
            dependencies: [],
            path: ".",
            sources: [
                "src/parser.c",
                // NOTE: if your language has an external scanner, add it here.
            ],
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterGraphqlTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterGraphql",
            ],
            path: "bindings/swift/TreeSitterGraphqlTests"
        )
    ],
    cLanguageStandard: .c11
)
