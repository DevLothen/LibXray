// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "XrayKit",
  products: [
    .library(
        name: "XrayKit",
        targets: ["XrayKit"]
    )
  ],
  targets: [
    .target(
        name: "XrayKit",
        dependencies: ["XrayKitC", "LibXray"]
    ),
    .target(
        name: "XrayKitC",
        publicHeadersPath: "."
    ),
    .binaryTarget(
        name: "LibXray",
	url: "https://github.com/DevLothen/LibXray/releases/download/2.0.3/LibXray.xcframework.zip",
	checksum: "e52fd922dc998e9fc972e8c139303d64755e4a912aef47c31510c2f28cfd794e"
    )
  ]
)


