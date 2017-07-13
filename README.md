# SwiftyShadow
Helper Libraries to generate wonderful shadow in Swift iOS.

## Screenshots

<table>
  <tr>
    <th>
      <img src="Screenshot/screenshot1.png" width="220"/>
    </th>
  </tr>
</table>

## Requirements

* iOS 8.0+
* Xcode 8+
* Swift 3

## Installation

### CocoaPods

To integrate PhotoCollectionView into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

pod 'SwiftyShadow', '~> 1.2'
```

Then, run the following command:

```bash
$ pod install
```

### Manually
- Drag and drop `SwiftyShadow` folder into your project.

## Usage

### Inner Shadow in View
Use `SwiftyInnerShadowView` class as UIView to make this View has inner shadow.

- Use Storyboard

Set SwiftyInnerShadowView as UIView Class in the storyboard:
<table>
  <tr>
    <th>
      <img src="Tutorial/storyboard.png" width="220"/>
    </th>
  </tr>
</table>

then make an outlet
```
@IBOutlet weak var testView: SwiftyInnerShadowView!
```


- inner shadow properties
```
testView.shadowLayer.shadowRadius = 4
testView.shadowLayer.shadowColor = UIColor.red.cgColor
testView.shadowLayer.shadowOpacity = 0.8
testView.shadowLayer.shadowOffset = CGSize.zero
testView.cornerRadius = 120
```

## License
[MIT](http://thi.mit-license.org/)
