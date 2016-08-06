# material-icons-swift
Material icons font for using in swift

## Installation

### CocoaPods

```
pod 'MaterialIconsSwift'
```

## Usage

 Get icon font:

```swift
label.font = MaterialIcons.fontOfSize(48)
```

Get icon code from name:

```swift
label.text = MaterialIcons.icon("view_headline")
```

List all icon names:

```swift
print("\(MaterialIcons.icons())")
```