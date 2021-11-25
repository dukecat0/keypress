# keypress

Simulates key press in Swift.

## Installation

Add the following line to the `dependencies` in `Package.swift`:

```swift
.package(url: "https://github.com/meowmeowmeowcat/keypress", from: "0.0.2"),
```

## Usage

Pressing key <kbd>A</kbd>
```swift
import keypress

keypress.press("A")
```

Pressing hotkey <kbd>Command</kbd>+<kbd>A</kbd>:
```swift
keypress.hotkey("Command", "A")
```
