/*

  **Package.swift**
  The Swift Machine
  Version 0.1.0
  (C) 2017 | Artemis Project Team
  Licensed under GNU GPL v3

*/

// swift-tools-version:3.1

import PackageDescription


let package = Package(
    name: "swift-machine",
    dependencies: [
        .Package(url: "https://github.com/Longhanks/qlift", Version(0, 0, 36))
    ]
)
