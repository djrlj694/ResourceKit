# ResourceKit

[![Build Status](https://travis-ci.org/djrlj694/TravisCIBlog.svg?branch=master)](https://travis-ci.org/djrlj694/ResourceKit)

A Swift-native iOS framework for working with files and file types.

## Installation

ResourceKit currently supports the following popular package managers:

* [Swift Package Manager (SPM)](https://swift.org/package-manager/): Apple's official solution for managing Swift packages; 
* [CocoaPods](https://cocoapods.org): A centralized dependency manager, written in Ruby, for Swift and Objective-C projects;
* [Carthage](https://github.com/Carthage/Carthage): A decentralized dependency manager, written in Swift, for Swift and Objective-C projects.

If package management is not your thing, manual installation instructions are also provided.

For more information on Swift package management or for help in selecting a particular package manager for your project, refer to the following articles:
* [Swift Package Manager vs CocoaPods vs Carthage for All Platforms](https://www.codementor.io/blog/swift-package-manager-5f85eqvygj): Dec 07, 2018
* [Choosing the Right iOS Dependency Manager](https://aimconsulting.com/insights/blog/choosing-the-right-ios-dependency-manager/): Oct 23, 2018

### Swift Package Manager

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

### CocoaPods

Add the following to your `Podfile`:

```ruby
# CocoaPods
pod 'ResourceKit', '~> 1.0.0'
```

### Carthage

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
