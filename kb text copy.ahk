; AutoHotkey v2.0 script to copy one word at a time when selecting with Shift + Ctrl + Arrow keys

#SingleInstance
return


;copy text with kb
; Select one word and copy with Shift + Ctrl + Left Arrow
+^Left::
{
    Send("+^{Left}")   ; Simulate Shift + Ctrl + Left Arrow to select one word
    Sleep(50)          ; Small delay to allow selection
    Send("^c")         ; Copy selected text (Ctrl + C)
    return
}

; Select one word and copy with Shift + Ctrl + Right Arrow
+^Right::
{
    Send("+^{Right}")  ; Simulate Shift + Ctrl + Right Arrow to select one word
    Sleep(50)          ; Small delay to allow selection
    Send("^c")         ; Copy selected text (Ctrl + C)
    return
}

; Select one line upward and copy with Shift + Up Arrow
+Up::
{
    Send("+{Up}")      ; Simulate Shift + Up Arrow to select by line
    Sleep(50)          ; Small delay to allow selection
    Send("^c")         ; Copy selected text (Ctrl + C)
    return
}

; Select one line downward and copy with Shift + Down Arrow
+Down::
{
    Send("+{Down}")    ; Simulate Shift + Down Arrow to select by line
    Sleep(50)          ; Small delay to allow selection
    Send("^c")         ; Copy selected text (Ctrl + C)
    return
}

;move mouse with kb
; Move mouse up with Ctrl + I
^!i::
{
    MouseMove(0, -20, 0, "R")  ; Move the mouse cursor up by 10 pixels
    return
}

; Move mouse left with Ctrl + J
^!j::
{
    MouseMove(-20, 0, 0, "R")  ; Move the mouse cursor left by 10 pixels
    return
}

; Move mouse down with Ctrl + K
^!k::
{
    MouseMove(0, 20, 0, "R")   ; Move the mouse cursor down by 10 pixels
    return
}

; Move mouse right with Ctrl + L
^!l::
{
    MouseMove(20, 0, 0, "R")   ; Move the mouse cursor right by 10 pixels
    return
}

^!z::
{
    Send "{LButton}"
    return
}

^!x::
{
    Send "{RButton}"
    return
}