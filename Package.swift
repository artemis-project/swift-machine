// swift-tools-version:3.1

import PackageDescription


let package = Package(
    name: "swift-machine",
    dependencies: [
        .Package(url: "https://github.com/Longhanks/qlift", Version(0, 0, 36))
    ]
)
