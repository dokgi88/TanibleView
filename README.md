![imgTitleLogo](https://github.com/dokgi88/dokgi88.github.io/blob/master/_images/TanibleView/imgTitleLogo.png?raw=true)
_<p align="right"> Designed by [yoon](https://www.behance.net/dusqkq02639) </p>_
-
<br/>

# TanibleView

![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)
![Platform](https://img.shields.io/badge/Platform-iOS-lightgrey.svg)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/dokgi88/TanibleView/blob/master/LICENSE)

| top | left | right | bottom |
|:---:|:---:|:---:|:---:|
| ![top.gif](https://github.com/dokgi88/dokgi88.github.io/blob/master/_images/TanibleView/top.gif?raw=true) | ![left.gif](https://github.com/dokgi88/dokgi88.github.io/blob/master/_images/TanibleView/left.gif?raw=true) | ![right.gif](https://github.com/dokgi88/dokgi88.github.io/blob/master/_images/TanibleView/right.gif?raw=true) | ![bottom.gif](https://github.com/dokgi88/dokgi88.github.io/blob/master/_images/TanibleView/bottom.gif?raw=true) |

| inPlaceFadeIn | inPlaceFadeInTop | inPlaceFadeInBottom |
|:---:|:---:|:---:|
| ![inPlaceFadeIn.gif](https://github.com/dokgi88/dokgi88.github.io/blob/master/_images/TanibleView/inPlaceFadeIn.gif?raw=true) | ![inPlaceFadeInTop.gif](https://github.com/dokgi88/dokgi88.github.io/blob/master/_images/TanibleView/inPlaceFadeInTop.gif?raw=true) | ![inPlaceFadeInBottom.gif](https://github.com/dokgi88/dokgi88.github.io/blob/master/_images/TanibleView/inPlaceFadeInBottom.gif?raw=true) |

## Install

```swift
pod 'TanibleView'
```

## Example

* Set animation direction
```swift
/* 
* default direction top
* .bottom, .inPlaceFadeIn, etc...
*/ 
let tableView = TanibleView()
tableView.direction = .bottom
```

* Set Enabled
```swift
// default true
tableView.isEnabled = false
```

* And other settings
```swift
tableView.duration = 1.6
tableView.delay = 0.06
tableView.springDamping = 0.6
tableView.springValocity = 0.1
```

## License

TanibleView is available under the MIT license. See the LICENSE file for more info.
