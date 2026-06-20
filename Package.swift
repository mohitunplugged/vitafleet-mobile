// swift-tools-version:5.9
import PackageDescription

let package = Package(
  name: "VitaFleet",
  platforms: [.iOS(.v16)],
  products: [.library(name: "VitaFleet", targets: ["VitaFleet"])],
  dependencies: [
    .package(url: "https://github.com/firebase/firebase-ios-sdk.git", from: "10.0.0")
  ],
  targets: [
    .target(name: "VitaFleet", dependencies: [
      .product(name: "FirebaseCrashlytics", package: "firebase-ios-sdk")
    ])
  ]
)
