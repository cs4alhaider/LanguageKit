# LanguageKit

LanguageKit is a lightweight Swift package that provides easy-to-use utilities for handling language direction (LTR/RTL) and localization in iOS applications.

## Features

- 🌍 Get current language code
- ⚡️ Check language direction (LTR/RTL)
- 📱 Access app's preferred localizations
- 💪 Strong type safety with enum-based approach
- 🔄 Simple API for language-related operations

## Requirements

- iOS 16.0+
- Swift 6.0+

## Installation

### Swift Package Manager

Add LanguageKit to your project through Xcode:

1. Go to `File` > `Add Packages...`
2. Enter the package URL: `https://github.com/cs4alhaider/LanguageKit`
3. Click `Add Package`

Or add it to your `Package.swift`:

## Usage

```swift
import LanguageKit

let currentLanguageCode = Language.code
let isRTL = Language.isRTL
let preferredLocalizations = Language.preferredLocalizations
let currentLanguageDirection = Language.currentDirection

// In case we need some custom UI for lang direction..
if Language.isRTL {
  // Custom RTL UI
} else {
  // Custom LTR UI
}   
```
