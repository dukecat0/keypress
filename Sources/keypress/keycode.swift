import Carbon.HIToolbox.Events

var keyCode : [String: UInt16] = [  // a-z
                                    "a": UInt16(kVK_ANSI_A),
                                    "b": UInt16(kVK_ANSI_B),
                                    "c": UInt16(kVK_ANSI_C),
                                    "d": UInt16(kVK_ANSI_D),
                                    "e": UInt16(kVK_ANSI_E),
                                    "f": UInt16(kVK_ANSI_F),
                                    "g": UInt16(kVK_ANSI_G),
                                    "h": UInt16(kVK_ANSI_H),
                                    "i": UInt16(kVK_ANSI_I),
                                    "j": UInt16(kVK_ANSI_J),
                                    "k": UInt16(kVK_ANSI_K),
                                    "l": UInt16(kVK_ANSI_L),
                                    "m": UInt16(kVK_ANSI_M),
                                    "n": UInt16(kVK_ANSI_N),
                                    "o": UInt16(kVK_ANSI_O),
                                    "p": UInt16(kVK_ANSI_P),
                                    "q": UInt16(kVK_ANSI_Q),
                                    "r": UInt16(kVK_ANSI_R),
                                    "s": UInt16(kVK_ANSI_S),
                                    "t": UInt16(kVK_ANSI_T),
                                    "u": UInt16(kVK_ANSI_U),
                                    "v": UInt16(kVK_ANSI_V),
                                    "w": UInt16(kVK_ANSI_W),
                                    "x": UInt16(kVK_ANSI_X),
                                    "y": UInt16(kVK_ANSI_Y),
                                    "z": UInt16(kVK_ANSI_Z),
                                    // Numbers 0-9
                                    "0": UInt16(kVK_ANSI_0),
                                    "1": UInt16(kVK_ANSI_1),
                                    "2": UInt16(kVK_ANSI_2),
                                    "3": UInt16(kVK_ANSI_3),
                                    "4": UInt16(kVK_ANSI_4),
                                    "5": UInt16(kVK_ANSI_5),
                                    "6": UInt16(kVK_ANSI_6),
                                    "7": UInt16(kVK_ANSI_7),
                                    "8": UInt16(kVK_ANSI_8),
                                    "9": UInt16(kVK_ANSI_9),
                                    // Arithmetic operators
                                    "+": UInt16(kVK_ANSI_KeypadPlus),
                                    "plus": UInt16(kVK_ANSI_KeypadPlus),
                                    "divide": UInt16(kVK_ANSI_KeypadDivide),
                                    "minus": UInt16(kVK_ANSI_Minus),
                                    "-": UInt16(kVK_ANSI_Minus),
                                    "multiply" : UInt16(kVK_ANSI_KeypadMultiply),
                                    "*": UInt16(kVK_ANSI_KeypadMultiply),
                                    "=": UInt16(kVK_ANSI_Equal),
                                    "equal": UInt16(kVK_ANSI_Equal),
                                    // Keypad
                                    "keypad0": UInt16(kVK_ANSI_Keypad0),
                                    "keypad1": UInt16(kVK_ANSI_Keypad1),
                                    "keypad2": UInt16(kVK_ANSI_Keypad2),
                                    "keypad3": UInt16(kVK_ANSI_Keypad3),
                                    "keypad4": UInt16(kVK_ANSI_Keypad4),
                                    "keypad5": UInt16(kVK_ANSI_Keypad5),
                                    "keypad6": UInt16(kVK_ANSI_Keypad6),
                                    "keypad7": UInt16(kVK_ANSI_Keypad7),
                                    "keypad8": UInt16(kVK_ANSI_Keypad8),
                                    "keypad9": UInt16(kVK_ANSI_Keypad9),
                                    "keypadclear": UInt16(kVK_ANSI_KeypadClear),
                                    "keypadenter": UInt16(kVK_ANSI_KeypadEnter),
                                    "keypaddivide": UInt16(kVK_ANSI_KeypadDivide),
                                    "keypadplus": UInt16(kVK_ANSI_KeypadPlus), 
                                    "keypadminus": UInt16(kVK_ANSI_KeypadMinus),
                                    "keypadmultiply": UInt16(kVK_ANSI_KeypadMultiply),
                                    "keypadequals": UInt16(kVK_ANSI_KeypadEquals),
                                    "pagedown": UInt16(kVK_PageDown),
                                    "pageup": UInt16(kVK_PageUp),
                                    "end": UInt16(kVK_End),
                                    "home": UInt16(kVK_Home),
                                    // F1-F20
                                    "f1": UInt16(kVK_F1),
                                    "f2": UInt16(kVK_F2),
                                    "f3": UInt16(kVK_F3),
                                    "f4": UInt16(kVK_F4),
                                    "f5": UInt16(kVK_F5),
                                    "f6": UInt16(kVK_F6),
                                    "f7": UInt16(kVK_F7),
                                    "f8": UInt16(kVK_F8),
                                    "f9": UInt16(kVK_F9),
                                    "f10": UInt16(kVK_F10),
                                    "f11": UInt16(kVK_F11),
                                    "f12": UInt16(kVK_F12),
                                    "f13": UInt16(kVK_F13),
                                    "f14": UInt16(kVK_F14),
                                    "f15": UInt16(kVK_F15),
                                    "f16": UInt16(kVK_F16),
                                    "f17": UInt16(kVK_F17),
                                    "f18": UInt16(kVK_F18),
                                    "f19": UInt16(kVK_F19),
                                    "f20": UInt16(kVK_F20),
                                    // Other keys
                                    "'": UInt16(kVK_ANSI_Quote),
                                    "quote": UInt16(kVK_ANSI_Quote),
                                    "`": UInt16(kVK_ANSI_Grave),
                                    "backquote": UInt16(kVK_ANSI_Grave),
                                    "backslash": UInt16(kVK_ANSI_Backslash),
                                    "capslock": UInt16(kVK_CapsLock),
                                    "help": UInt16(kVK_Help),
                                    "delete": UInt16(kVK_ForwardDelete),
                                    "backspace": UInt16(kVK_Delete),
                                    "return": UInt16(kVK_Return),
                                    "tab": UInt16(kVK_Tab),
                                    "esc": UInt16(kVK_Escape),
                                    "escape": UInt16(kVK_Escape),
                                    "comma" : UInt16(kVK_ANSI_Comma),
                                    "decimal": UInt16(kVK_ANSI_KeypadDecimal),
                                    "period": UInt16(kVK_ANSI_Period),
                                    "(": UInt16(kVK_ANSI_LeftBracket),
                                    "leftbracket": UInt16(kVK_ANSI_LeftBracket),
                                    ")": UInt16(kVK_ANSI_RightBracket),
                                    "rightbracket": UInt16(kVK_ANSI_RightBracket),
                                    ";": UInt16(kVK_ANSI_Semicolon),
                                    "semicolon": UInt16(kVK_ANSI_Semicolon),
                                    "slash": UInt16(kVK_ANSI_Slash),
                                    "/": UInt16(kVK_ANSI_Slash),
                                    "space": UInt16(kVK_Space),
                                    "mute": UInt16(kVK_Mute),
                                    "volumedown": UInt16(kVK_VolumeDown),
                                    "volumeup": UInt16(kVK_VolumeUp),
                                    "⌘": UInt16(kVK_Command),
                                    "command": UInt16(kVK_Command),
                                    "rightcommand": UInt16(kVK_RightCommand),
                                    "⌃": UInt16(kVK_Control),
                                    "control": UInt16(kVK_Control),
                                    "ctrl": UInt16(kVK_Control),
                                    "rightcontrol": UInt16(kVK_RightControl),
                                    "fn": UInt16(kVK_Function),
                                    "function": UInt16(kVK_Function),
                                    "⌥":  UInt16(kVK_Option),
                                    "option": UInt16(kVK_Option),
                                    "rightOption": UInt16(kVK_RightOption),
                                    "⇧": UInt16(kVK_Shift),
                                    "shift": UInt16(kVK_Shift),
                                    "rightshift": UInt16(kVK_RightShift),
                                    "↓": UInt16(kVK_DownArrow),
                                    "downarrow": UInt16(kVK_DownArrow),
                                    "←": UInt16(kVK_LeftArrow),
                                    "leftarrow": UInt16(kVK_LeftArrow),
                                    "→": UInt16(kVK_RightArrow),
                                    "rightarrow": UInt16(kVK_RightArrow),
                                    "↑": UInt16(kVK_UpArrow),
                                    "uparrow": UInt16(kVK_UpArrow),
                               ]