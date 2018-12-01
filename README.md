# SwiftXib
An easy Xib loader:

[![platform](https://img.shields.io/badge/platforms-iOS%20%7C%20macOS%20%7C%20tvOS%20%7C%20watchOS%20%7C%20Linux-333333.svg)](https://cocoapods.org/pods/SwiftXib)
[![pod](https://img.shields.io/cocoapods/v/SwiftXib.svg?style=flat)](https://cocoapods.org/pods/SwiftXib)
[![swift](https://img.shields.io/badge/Swift-4.2-orange.svg)](https://swift.org)


## Installation
#### CocoaPods
You can use [CocoaPods](https://cocoapods.org/pods/SwiftXib) to install `SwiftXib` by adding it to your `Podfile`:

```ruby
platform :ios, '8.0'
use_frameworks!
pod 'SwiftXib'
```

In your application, simply import the library

``` swift
import SwiftXib
```


## How to use:
1. Create your Xib view.
2. Create you Xib class and extend SwiftXibView class.
3. Override nibName and set you xib view name.  
4. Connect Xib File's Owner to your class.
5. Connect your UI items to your class.
6. Done!.


- You can you override *SetUI()* func for initialise your view - this func will call immediate after you view is done setUp
#### For more info check ours Wiki.


## Contributors

* [Yair Hadad](https://www.linkedin.com/in/yair-hadad-481440156) - [@Kuyu12](https://github.com/kuyu12)

## License

Distributed under the MIT license. See [`LICENSE`](LICENSE) for more information.
