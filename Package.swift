// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

// ./.build/release/qjsc -c -o repl.c -m Sources/qjs/repl.js

let package = Package(
    name: "quickjs",
    products: [
        
        .library(
            name: "quickjs",
            targets: ["quickjs"]),
        .library(
            name: "jscompress",
            targets: ["jscompress"]),
        .library(
            name: "unicode_gen",
            targets: ["unicode_gen"]),

        .executable(name: "qjsc", targets: ["qjsc"]),
        .executable(name: "qjs", targets: ["qjs"])
    ],
    targets: [
        .target(
            name: "quickjs"
        ),
        .target(
            name: "qjsc",
            dependencies:["quickjs"]
        ),
        .target(
            name: "qjs",
            dependencies:["quickjs"]
        ),
        .target(
            name: "jscompress",
            dependencies:["quickjs"]
        ),
        .target(
            name: "unicode_gen",
            dependencies:["quickjs"]
        )
    ]
)
