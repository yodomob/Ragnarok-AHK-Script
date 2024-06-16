# Ragnarok Online AutoHotkey Script

This repository contains AutoHotkey (AHK) scripts for automating repetitive tasks in Ragnarok Online, making gameplay easier by reducing the need for repeated key presses and mouse clicks.

## Script: `ragnarok.ahk`

### Description

This script automates key presses and mouse clicks for specific actions in Ragnarok Online. By holding down specific keys, you can send repeated commands to the game, which helps in reducing strain from repetitive actions.

### Key Bindings

- `F1`: Sends the F1 key command to the Ragnarok window.
- `F3`: While holding the F3 key, continuously sends the F3 key command and performs a left mouse click.
- `F4`: Sends the F4 key command to the Ragnarok window.
- `F5`: Sends the F5 key command to the Ragnarok window.
- `Enter`: Sends the Enter key command to the Ragnarok window.
- `Right Mouse Button (RButton)`: While holding the right mouse button, continuously sends the F9 key command and performs a left mouse click.

### Script Contents

```ahk
#IfWinActive, ahk_class Ragnarok
F1::
    ControlSend,, {F1}, ahk_class Ragnarok
return

F3::
    While GetKeyState("F3", "P") {
        ControlSend,, {F3 down}, ahk_class Ragnarok
        ControlSend,, {F3 up}, ahk_class Ragnarok
        MouseClick, Left
    }
return

F4::
    ControlSend,, {F4}, ahk_class Ragnarok
return

F5::
    ControlSend,, {F5}, ahk_class Ragnarok
return

Enter::
    ControlSend,, {Enter}, ahk_class Ragnarok
return

*RButton::
    While GetKeyState("RButton", "P") {
        ControlSend,, {F9 down}, ahk_class Ragnarok
        ControlSend,, {F9 up}, ahk_class Ragnarok
        MouseClick, Left
    }
return

# Usage

Install AutoHotkey: Download and install AutoHotkey from https://www.autohotkey.com/.
Download the Script: Download the ragnarok.ahk file from this repository.
Run the Script: Double-click the ragnarok.ahk file to run the script. Ensure AutoHotkey is installed on your computer.
Activate Ragnarok: Make sure the Ragnarok Online game window is active.
Use the Key Bindings: Press the specified keys or mouse buttons to perform the automated actions as described.
