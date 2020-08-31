// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

// ./.build/release/qjsc -c -o repl.c -m Sources/qjs/repl.js

let package = Package(
    name: "qjs",
    products: [
        .library(
            name: "libqjs",
            targets: ["libqjs"]),
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
            name: "libqjs"
        ),
        .target(
            name: "qjs",
            dependencies:["libqjs", "qjsc"]
        ),
        .target(
            name: "qjsc",
            dependencies:["libqjs"]
        ),
        .target(
            name: "jscompress",
            dependencies:["libqjs"]
        ),
        
        .target(
            name: "unicode_gen",
            dependencies:["libqjs"]
        )
    ]
)
