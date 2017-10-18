## CDGSwiftSDK

[![Build Status](https://api.travis-ci.org/sgcodigo/CDGSwiftExtensions.svg?branch=master)](https://travis-ci.org/sgcodigo/CDGSwiftExtensions)
[![codecov.io](https://codecov.io/gh/sgcodigo/CDGSwiftExtensions/branch/master/graphs/badge.svg)](https://codecov.io/gh/sgcodigo/CDGSwiftExtensions/branch/master)


iOS SDK for developers, Codigo style.

This SDK contains really common methods that are used in many of our projects.

This SDK is split into the following kits:
- CDGSwiftExtensions - contains extension methods on basic data type in Swift, like Int, String etc.
- CDGSwiftSingletons - TODO
- CDGSwiftUIKit - TODO
- CDGSwiftServices - TODO

## Requirements
- Miniumum deployment target is 10.0.
- Swift 4.
- Xcode 9

## Installation

```
platform :ios, '10.0' # deployment target
use_frameworks!
pod 'CDGSwiftExtensions'
```

## Usage - TODO split into the different kits

```swift
10.isEven // true
11.isOdd // false

10.isPositive // true
10.isNegative // false
-10.isPositive // false
-10.isNegative // true

10.cgFloat // 4.0
10.double // 4.0
10.digits // 2
1000.digits // 4
```

## License
CDGSwiftExtensions is available under the MIT license. See the [LICENSE file](https://github.com/sgcodigo/CDGSwiftSDK/blob/master/LICENSE).

## Keywords
swift, extension, codigo, singletons, UI, UIKit, helpers, services