# keypress

A Swift library that simulates key press.

## Installation

Add the following line to the `dependencies` in `Package.swift`:

```swift
.package(url: "https://github.com/meowmeowmeowcat/keypress", from: "0.0.1"),
```

## Usage

Pressing key <kbd>A</kbd>
```swift
import keypress

keypress.press("A")
```

Done!

### TODO:

- [ ] Allows to press <kbd>Command</kbd>/<kbd>Option</kbd>/<kbd>Shift</kbd> at the same time.
