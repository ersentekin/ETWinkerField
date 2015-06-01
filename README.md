##![](Resource/logotype.png)

[![CI Status](http://img.shields.io/travis/Ersen Tekin/ETWinkerField.svg?style=flat)](https://travis-ci.org/Ersen Tekin/ETWinkerField)
[![Version](https://img.shields.io/cocoapods/v/ETWinkerField.svg?style=flat)](http://cocoapods.org/pods/ETWinkerField)
[![License](https://img.shields.io/cocoapods/l/ETWinkerField.svg?style=flat)](http://cocoapods.org/pods/ETWinkerField)
[![Platform](https://img.shields.io/cocoapods/p/ETWinkerField.svg?style=flat)](http://cocoapods.org/pods/ETWinkerField)



## Usage

####Via Storyboard
You can put a `UITextField` on storyboard and set it's class as `ETWinkerField`. You can access through **Identity Inspector** Here's a screenshot.

![](Resource/ss-storyboard.png)
####Additional Customizations

```objective-c
// wink images
UIImage* iconImageShown = [UIImage imageNamed:@"wink.png"];
UIImage* iconImageHidden = [UIImage imageNamed:@"wink-hidden.png"];
    
// ATTENTION!
// insert hidden image FIRST
NSMutableArray* arrayImages = [[NSMutableArray alloc] initWithObjects:iconImageHidden, iconImageShown, nil];
self.passwordTextField.arrayStatusImages = [arrayImages mutableCopy];
```

## Installation

ETWinkerField is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "ETWinkerField"
```

Then run `pod install`


## TODOs
- Add test coverage
- Fix irrelevant spacing after hide-to-show switch.

## Author

Ersen Tekin, ersen.tekin@gmail.com

## License

ETWinkerField is available under the MIT license. See the LICENSE file for more info.
