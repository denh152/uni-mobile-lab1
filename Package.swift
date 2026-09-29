// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "ios-lecture3-swift",
    targets: [
        .executableTarget(name: "Task1HelloSwift"),
        .executableTarget(name: "Task1HelloSwiftMain"),
        .executableTarget(name: "Task2Types"),
        .executableTarget(name: "Task3Strings"),
        .executableTarget(name: "Task4Optionals"),
    ]
)
