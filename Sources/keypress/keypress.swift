import CoreGraphics


public struct keypress {
    enum KeyError: Error {
        case KeyNotFound
    }
    private static func check(_ key: String) throws {
        let key = key.lowercased()

        guard keyCode[key] != nil else {
            throw KeyError.KeyNotFound
        }
    }

    public static func press (_ key: String) -> Bool{
        do {
            try check(key)
        } catch KeyError.KeyNotFound {
            print("Key not found.")
        } catch {
            print("Unknown error.")
        }
        let key = key.lowercased()

        let src = CGEventSource(stateID: CGEventSourceStateID.hidSystemState)

        let key_down = CGEvent(keyboardEventSource: src, virtualKey: CGKeyCode(keyCode[key]!), keyDown: true)
        let key_up = CGEvent(keyboardEventSource: src, virtualKey: CGKeyCode(keyCode[key]!), keyDown: false)

        let loc = CGEventTapLocation.cghidEventTap

        key_down?.post(tap: loc)
        key_up?.post(tap: loc)

        return true
    }
}
