// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "LibXray",
  products: [
    .library(name: "LibXray", targets: ["LibXray"])
  ],
  targets: [
    .binaryTarget(
      name: "LibXray",
      url: "https://github.com/DevLothen/LibXray/releases/download/1.0.0/LibXray.xcframework.zip",
      checksum: "393032fd5ebdb75a6b528052b727184afd0f61f4886bfb1e83e1293e9cbbf294"
    )
  ]
)
