;===============================================================================
; Function Name:  _MouseClickPlus()
; Version added:  0.1
; Description:    Sends a click to window, not entirely accurate, but works
;                 minimized.
; Parameter(s):   $Window     =  Title of the window to send click to
;                 $Button     =  "left" or "right" mouse button
;                 $X          =  X coordinate
;                 $Y          =  Y coordinate
;                 $Clicks     =  Number of clicks to send
; Remarks:        You MUST be in "MouseCoordMode" 0 to use this without bugs.
; Author(s):      Insolence <insolence_9@yahoo.com>
;===============================================================================
Func _ControlDragY($Window, $Button = "left", $X = "", $Y = "", $X2 = "", $Y2 = "", $Clicks = 1)
Local $MK_LBUTTON = 0x0001
Local $WM_LBUTTONDOWN = 0x0201
Local $WM_LBUTTONUP = 0x0202
Local $MK_RBUTTON = 0x0002
Local $WM_RBUTTONDOWN = 0x0204
Local $WM_RBUTTONUP = 0x0205
Local $WM_MOUSEMOVE = 0x0200
Local $Xd = Abs($X-$X2)/5
Local $Yd = Abs($Y-$Y2)/5
Local $i = 0

Select
Case $Button = "left"
$Button = $MK_LBUTTON
$ButtonDown = $WM_LBUTTONDOWN
$ButtonUp = $WM_LBUTTONUP
Case $Button = "right"
$Button = $MK_RBUTTON
$ButtonDown = $WM_RBUTTONDOWN
$ButtonUp = $WM_RBUTTONUP
EndSelect

If $X = "" Or $Y = "" Then
$MouseCoord = MouseGetPos()
$X = $MouseCoord[0]
$Y = $MouseCoord[1]
EndIf

DllCall("user32.dll", "int", "SendMessage", _
"hwnd", WinGetHandle($Window), _
"int", $WM_MOUSEMOVE, _
"int", 0, _
"long", _MakeLong($X, $Y))

DllCall("user32.dll", "int", "SendMessage", _
"hwnd", WinGetHandle($Window), _
"int", $ButtonDown, _
"int", $Button, _
"long", _MakeLong($X, $Y))

While $Yd > 0
   If $Y2 > $Y Then
	  $Y = $Y + 5
   Else
	  $Y = $Y - 5
   EndIf
DllCall("user32.dll", "int", "SendMessage", _
"hwnd", WinGetHandle($Window), _
"int", $WM_MOUSEMOVE, _
"int", 0, _
"long", _MakeLong($X2, $Y))
   $Yd = $Yd - 1
   sleep(1)
WEnd

Sleep(50)

DllCall("user32.dll", "int", "SendMessage", _
"hwnd", WinGetHandle($Window), _
"int", $ButtonUp, _
"int", $Button, _
"long", _MakeLong($X2, $Y))
EndFunc

Func _ControlDragYSlow($Window, $Button = "left", $X = "", $Y = "", $X2 = "", $Y2 = "", $Clicks = 1)
Local $MK_LBUTTON = 0x0001
Local $WM_LBUTTONDOWN = 0x0201
Local $WM_LBUTTONUP = 0x0202
Local $MK_RBUTTON = 0x0002
Local $WM_RBUTTONDOWN = 0x0204
Local $WM_RBUTTONUP = 0x0205
Local $WM_MOUSEMOVE = 0x0200
Local $Xd = Abs($X-$X2)/5
Local $Yd = Abs($Y-$Y2)/5
Local $i = 0

Select
Case $Button = "left"
$Button = $MK_LBUTTON
$ButtonDown = $WM_LBUTTONDOWN
$ButtonUp = $WM_LBUTTONUP
Case $Button = "right"
$Button = $MK_RBUTTON
$ButtonDown = $WM_RBUTTONDOWN
$ButtonUp = $WM_RBUTTONUP
EndSelect

If $X = "" Or $Y = "" Then
$MouseCoord = MouseGetPos()
$X = $MouseCoord[0]
$Y = $MouseCoord[1]
EndIf

DllCall("user32.dll", "int", "SendMessage", _
"hwnd", WinGetHandle($Window), _
"int", $WM_MOUSEMOVE, _
"int", 0, _
"long", _MakeLong($X, $Y))

DllCall("user32.dll", "int", "SendMessage", _
"hwnd", WinGetHandle($Window), _
"int", $ButtonDown, _
"int", $Button, _
"long", _MakeLong($X, $Y))

While $Yd > 0
   If $Y2 > $Y Then
	  $Y = $Y + 5
   Else
	  $Y = $Y - 5
   EndIf
DllCall("user32.dll", "int", "SendMessage", _
"hwnd", WinGetHandle($Window), _
"int", $WM_MOUSEMOVE, _
"int", 0, _
"long", _MakeLong($X2, $Y))
   $Yd = $Yd - 1
   sleep(1)
WEnd

Sleep(1000)

DllCall("user32.dll", "int", "SendMessage", _
"hwnd", WinGetHandle($Window), _
"int", $ButtonUp, _
"int", $Button, _
"long", _MakeLong($X2, $Y))
EndFunc

Func _ControlDragX($Window, $Button = "left", $X = "", $Y = "", $X2 = "", $Y2 = "", $Clicks = 1)
Local $MK_LBUTTON = 0x0001
Local $WM_LBUTTONDOWN = 0x0201
Local $WM_LBUTTONUP = 0x0202
Local $MK_RBUTTON = 0x0002
Local $WM_RBUTTONDOWN = 0x0204
Local $WM_RBUTTONUP = 0x0205
Local $WM_MOUSEMOVE = 0x0200
Local $Xd = Abs($X-$X2)/5
Local $Yd = Abs($Y-$Y2)/5
Local $i = 0

Select
Case $Button = "left"
$Button = $MK_LBUTTON
$ButtonDown = $WM_LBUTTONDOWN
$ButtonUp = $WM_LBUTTONUP
Case $Button = "right"
$Button = $MK_RBUTTON
$ButtonDown = $WM_RBUTTONDOWN
$ButtonUp = $WM_RBUTTONUP
EndSelect

If $X = "" Or $Y = "" Then
$MouseCoord = MouseGetPos()
$X = $MouseCoord[0]
$Y = $MouseCoord[1]
EndIf

DllCall("user32.dll", "int", "SendMessage", _
"hwnd", WinGetHandle($Window), _
"int", $WM_MOUSEMOVE, _
"int", 0, _
"long", _MakeLong($X, $Y))

DllCall("user32.dll", "int", "SendMessage", _
"hwnd", WinGetHandle($Window), _
"int", $ButtonDown, _
"int", $Button, _
"long", _MakeLong($X, $Y))

While $Xd > 0
   If $X2 > $X Then
	  $X = $X + 5
   Else
	  $X = $X - 5
   EndIf
DllCall("user32.dll", "int", "SendMessage", _
"hwnd", WinGetHandle($Window), _
"int", $WM_MOUSEMOVE, _
"int", 0, _
"long", _MakeLong($X, $Y2))
   $Xd = $Xd - 1
   sleep(1)
WEnd

sleep(50)

DllCall("user32.dll", "int", "SendMessage", _
"hwnd", WinGetHandle($Window), _
"int", $ButtonUp, _
"int", $Button, _
"long", _MakeLong($X, $Y2))
EndFunc

Func _MakeLong($LoWord, $HiWord)
Return BitOR($HiWord * 0x10000, BitAND($LoWord, 0xFFFF))
EndFunc

Func _ControlDragXSlow($Window, $Button = "left", $X = "", $Y = "", $X2 = "", $Y2 = "", $Clicks = 1)
Local $MK_LBUTTON = 0x0001
Local $WM_LBUTTONDOWN = 0x0201
Local $WM_LBUTTONUP = 0x0202
Local $MK_RBUTTON = 0x0002
Local $WM_RBUTTONDOWN = 0x0204
Local $WM_RBUTTONUP = 0x0205
Local $WM_MOUSEMOVE = 0x0200
Local $Xd = Abs($X-$X2)/5
Local $Yd = Abs($Y-$Y2)/5
Local $i = 0

Select
Case $Button = "left"
$Button = $MK_LBUTTON
$ButtonDown = $WM_LBUTTONDOWN
$ButtonUp = $WM_LBUTTONUP
Case $Button = "right"
$Button = $MK_RBUTTON
$ButtonDown = $WM_RBUTTONDOWN
$ButtonUp = $WM_RBUTTONUP
EndSelect

If $X = "" Or $Y = "" Then
$MouseCoord = MouseGetPos()
$X = $MouseCoord[0]
$Y = $MouseCoord[1]
EndIf

DllCall("user32.dll", "int", "SendMessage", _
"hwnd", WinGetHandle($Window), _
"int", $WM_MOUSEMOVE, _
"int", 0, _
"long", _MakeLong($X, $Y))

DllCall("user32.dll", "int", "SendMessage", _
"hwnd", WinGetHandle($Window), _
"int", $ButtonDown, _
"int", $Button, _
"long", _MakeLong($X, $Y))

While $Xd > 0
   If $X2 > $X Then
	  $X = $X + 5
   Else
	  $X = $X - 5
   EndIf
DllCall("user32.dll", "int", "SendMessage", _
"hwnd", WinGetHandle($Window), _
"int", $WM_MOUSEMOVE, _
"int", 0, _
"long", _MakeLong($X, $Y2))
   $Xd = $Xd - 1
   sleep(1)
WEnd

sleep(1000)

DllCall("user32.dll", "int", "SendMessage", _
"hwnd", WinGetHandle($Window), _
"int", $ButtonUp, _
"int", $Button, _
"long", _MakeLong($X, $Y2))
EndFunc