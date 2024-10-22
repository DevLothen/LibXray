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
	url: "https://github.com/DevLothen/LibXray/releases/download/2.0.0/LibXray.xcframework.zip",
	checksum: "45cfb2a425b2b9f65ad65d7071cd111f5ab31944d7dd6776c28c7565561074eb"
    )
  ]
)


