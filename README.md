# SwiftXib
An easy Xib loader:

[![platform](https://img.shields.io/badge/platforms-iOS%20%7C%20macOS%20%7C%20tvOS-333333.svg)](https://cocoapods.org/pods/SwiftXib)
[![pod](https://img.shields.io/cocoapods/v/SwiftXib.svg?style=flat)](https://cocoapods.org/pods/SwiftXib)
[![swift](https://img.shields.io/badge/Swift-4.2-orange.svg)](https://swift.org)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/kuyu12/SwiftXib)


## Installation
#### CocoaPods
You can use [CocoaPods](https://cocoapods.org/pods/SwiftXib) to install `SwiftXib` by adding it to your `Podfile`:

```ruby
platform :ios, '8.0'
pod 'SwiftXib'
```
#### Carthage
`SwiftXib` is `carthage` compatible. Add the following entry in your `Cartfile`:

```
github "kuyu12/SwiftXib"
```

Then run `carthage update`.

In your application, simply import the library

``` swift
import SwiftXib
```

## Support Xibs:
- [x] UIView xib
- [x] UITableView xib

## How to use:
1. Create your Xib view.
2. Create you Xib class and extend SwiftXibView class.
3. Override nibName and set you xib view name.  
4. Connect Xib File's Owner to your class.

## Example
This example will simply load xib view with SwiftXibView 
```swift

Class MyCustomView : SwiftXibView {

  // override nibName and return your nib name. ('nibName.xib)
  override var nibName: String {return "nibName"}
  
  // setUI is call immediately after the view setUp.
  override func setUI() { 
    // initialized your view
  }
}
```

![alt text](https://github.com/kuyu12/SwiftXib/blob/master/Exmples/exmple1.png)

#### For more info check ours Wiki.


## Contributors

* [Yair Hadad](https://www.linkedin.com/in/yair-hadad-481440156) - [@Kuyu12](https://github.com/kuyu12)

## License

Distributed under the MIT license. See [`LICENSE`](LICENSE) for more information.
