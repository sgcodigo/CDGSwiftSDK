## CDGSwiftSDK

[![Build Status](https://api.travis-ci.org/sgcodigo/CDGSwiftSDK.svg?branch=master)](https://travis-ci.org/sgcodigo/CDGSwiftSDK)
[![codecov.io](https://codecov.io/gh/sgcodigo/CDGSwiftSDK/branch/master/graphs/badge.svg)](https://codecov.io/gh/sgcodigo/CDGSwiftExtensions/branch/master)


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

### Data Type

#### Int

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

#### Double

```swift
10.1.toString() // "10.10"
10.1.toString(decimalPlaces: 4) // "10.1000"

50.0.asFontSize // returns font size based on an algorithm, screen size of device and the standard PSD settings set by Codigo creatives.
```

#### Array

```swift
[1,2,3].toString() // ["1", "2", "3"]
[object1, object2, object3].toString() // ["object1 description", "object2 description", "object3 description"]

[1,2,3,4,5].chunk(2) // [[1,2], [3,4], [5]]
```

#### String

```swift
"codigo.co".isEmail // false
"codigo@codigo.co".isEmail // true

"123".isNumeric // true
"123.123".isNumeric // false
"123.123.123".isNumeric // false

"123".isNumber // true
"123.123".isNumber // true
"123.123.123".isNumber // false

"123".isAlphabetical // false
"codigo".isAlphabetical // true

"hello\ncodigo".unescape() // TODO

" codigo pte ltd    ".trim() // "codigo pte ltd"

"codigo".replace(target: "o", withString: "0") // "c0dig0"
```

#### TimeInterval

```swift
7266.toString([.hour, .minute]) // "2:01"
7266.toString([.minute, .second]) // "121:06"
7266.toString([.hour, .minute, .second]) // "2:01:06"
```

### UI Elements

#### UIImage

```swift
image.jpgBase64 // get base64 string of jpg format
image.pngBase64 // get base64 string of png format
```

#### UIView

```swift
view.setCornerRadius(_:) //
view.rounded() // commonly used for profile images
view.rounded(withBorderColor:withBorderWidth:) // commonly used for profile images

view.shake() // shake any ui view, comonely used in invalidation of fields
```

#### UITableView

```swift
// basic but beautiful fade in from bottom animation during `reloadData()`; TODO not working on section header and footers, only the cells
tableView.animateTable()
```

#### UIApplication

```swift
UIApplication.visibleViewController // return the top most visible ViewController
```

#### UIScreen

```swift
UIScreen.width // return width of device
UIScreen.height // return height of device
```

#### UIColor

```swift
// create UIColor using hexcode
UIColor.init(hexString: "00FFff")
UIColor.init(hexString: "#666666", alpha: 0.5))
```

#### UIViewController

```swift
// notifications
vc.addNotificationObserver(notificationName, #selector(someFunc)) // add and bind notification observer to a selector function
vc.removeNotificationObserver(notificationName) // remove specific notification observer
vc.removeNotificationObservers() // remove ALL notification observers
```

## License
CDGSwiftExtensions is available under the MIT license. See the [LICENSE file](https://github.com/sgcodigo/CDGSwiftSDK/blob/master/LICENSE).

## Keywords
swift, extension, codigo, singletons, UI, UIKit, helpers, services