# keypress

Simulates key press in Swift on macOS.

## Usage

Pressing key <kbd>A</kbd>:
```swift
import keypress

keypress.press("A")
```

Simulating the typing of the following text:
```swift
keypress.write("Hello World")
```

Pressing hotkey <kbd>Command</kbd>+<kbd>A</kbd>:
```swift
keypress.hotkey("Command", "A")
```

## Add to your project

Add the following line to the `dependencies` in `Package.swift`:

```swift
.package(url: "https://github.com/meowmeowmeowcat/keypress", from: "0.0.4"),
```
