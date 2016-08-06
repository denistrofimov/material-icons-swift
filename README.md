# material-icons-swift
Material icons font for using in swift

## Installation

### CocoaPods

```
pod 'MaterialIconsSwift'
```

## Usage

```swift
// Get icon font:
label.font = MaterialIcons.fontOfSize(48)

// Get icon code from name
label.text = MaterialIcons.icon("view_headline")

// List all icon names
print("\(MaterialIcons.icons())")
```