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

