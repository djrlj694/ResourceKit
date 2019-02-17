# ResourceKit

[![Build Status](https://travis-ci.org/djrlj694/TravisCIBlog.svg?branch=master)](https://travis-ci.org/djrlj694/ResourceKit)

A Swift-native iOS framework for working with files and file types.

## Installation

### [Swift Package Manager](https://swift.org/package-manager/)

Add the following to your `Package.swift` file:

```swift
// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    // ... your project details
    dependencies: [
        // As a required dependency
        .package(url: "https://github.com/djrlj694/ResourceKit.git", majorVersion: 1)
    ],
    testDependencies: [
        // As a test dependency
        .package(url: "https://github.com/djrlj694/ResourceKit.git", majorVersion: 1)
    ]
)
```

### [CocoaPods](https://cocoapods.org)

Add the following to your `Podfile`:

```ruby
# CocoaPods
pod 'ResourceKit', '~> 1.0.0'
```

### [Carthage](https://github.com/Carthage/Carthage)

Add the following to your `Cartfile` (package dependency) or `Cartfile.private` (development dependency):

```
github "djrlj694/ResourceKit" ~> 1.0.0
```

### Manual

1. Clone or download the `ResourceKit` repository.
2. Copy the `ResourceKit` folder to your Xcode project.
3. Enable the following options:

    -  Copy items if needed
    -  Create groups


## Documentation

Documentation for the project can be found [here](https://djrlj694.github.io/ResourceKit/).

Information on how the documentation was generated and hosted can be found in the blog: [Generate & Host your iOS Documentation](https://medium.com/@jonathan2457/generate-host-your-ios-documentation-39e21b382ce8).

## Known issues

Currently, there are no known issues.  If you discover any, please kindly submit a [pull request](https://github.com/djrlj694/ResourceKit/pull/new/master).

## License

ResourceKit is released under the [MIT License](LICENSE.md).
