#RequireAdmin
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Add_Constants=n
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <ImageSearch2015.au3>
#include <clickplus.au3>
#include <GUIConstantsEx.au3>
#include <Array.au3>
#include <Process.au3>
#include <ScreenCapture.au3>
#include <AutoItConstants.au3>

Global $screenshot, $class, $hwnd, $Cor, $x, $y, $i, $Paused, $l1, $u1, $r1, $d1, $l, $u, $r, $d, $atk, $check, $check1, $loc = 1, $t, $guard, $guard2
;#comments-start
$aWindows = WinList()
For $i = 1 To $aWindows[0][0]
	$iWndState =  WinGetState($aWindows[$i][1])

	; skip windows without a title
	If $aWindows[$i][0] = 'World of Warcraft' Then
		;use the HWND to get the state of the window
		If BitAND($iWndState, 2) = 2 Then
			WinActivate($aWindows[$i][1])
			WinMove($aWindows[$i][1],"",0,0)
		EndIf
	EndIf
Next
;#comments-end
$class = "Hunter"
$screenshot = True
$i = 1
If $class = "Hunter" Then
While 1
	$found = False
	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Hunter\crows.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("2")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Hunter\Bestial Wrath.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("{F4}")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Hunter\Chimaera Shot.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("1")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Hunter\Kill Command.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("3")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Hunter\Barbed Shot.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("5")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Hunter\Cobra Shot.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("4")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Hunter\Multi Shot.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("6")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Hunter\Mend.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("+v")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Hunter\Counter Shot.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("9")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Hunter\Aspect of the Wild.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("0")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Hunter\Blood Fury.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("{F5}")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Hunter\Spitting Cobra.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("x")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Hunter\Dire Beast.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("+x")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Hunter\Exhilaration.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("=")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Hunter\Aspect of the Turtle.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("-")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Wait.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Mounted.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Attack.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Chat.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Dead.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Looting.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		$found = True
	EndIf

if $screenshot = True Then
	If $found = False Then
		_ScreenCapture_Capture(@ScriptDir & "\WOWimages\Test\Imager" & $i & ".png", 1550, 930, 1590, 960)
		$i = $i + 1
	EndIf
EndIf

	Sleep(Random(250, 400, 1))
WEnd
EndIf

IF $class = "Paladin" Then

While 1
	$found = False
	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Paladin\Blade of Justice.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("1")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Paladin\Crusader Strike.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("3")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Paladin\Judgement.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("2")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Paladin\Templar's Verdict.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("4")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Paladin\Consecration.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("5")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Paladin\Crusade.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("6")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Paladin\Hammer of Wrath.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("{F2}")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Paladin\Divine Storm.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("{F3}")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Paladin\Rebuke.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("{F4}")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Paladin\Flash of Light.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("{F5}")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Paladin\Greater Blessing of Kings.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("+z")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Paladin\Greater Blessing of Wisdom.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("+x")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Paladin\Shield of Vengence.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("{F6}")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Paladin\Divine Shield.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("z")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Paladin\Lay on Hands.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("x")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Wait.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Mounted.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Attack.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Chat.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Dead.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Looting.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		$found = True
	EndIf

If $screenshot = True Then

	If $found = False Then
		_ScreenCapture_Capture(@ScriptDir & "\WOWimages\Test\Imager" & $i & ".png", 1550, 930, 1590, 960)
		$i = $i + 1
	EndIf
EndIf

	Sleep(Random(250, 400, 1))
WEnd
EndIf

IF $class = "Mage" Then

While 1
	$found = False

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Mage\Arcane Intellect.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("{F2}")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Mage\Blizzard.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("6")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Mage\Flurry.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("3")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Mage\Frost Bolt.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("1")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Mage\Frozen Orb.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("7")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Mage\Ice Lance.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("2")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Wait.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Mounted.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Attack.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Chat.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Dead.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Looting.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		$found = True
	EndIf

If $screenshot = True Then

	If $found = False Then
		_ScreenCapture_Capture(@ScriptDir & "\WOWimages\Test\Imager" & $i & ".png", 1550, 930, 1590, 960)
		$i = $i + 1
	EndIf
EndIf

	Sleep(Random(250, 400, 1))
WEnd
EndIf



IF $class = "Druid" Then

While 1
	$found = False

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Druid\Warrior of Elune.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("6")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Druid\Sunfire.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("4")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Druid\Starsurge.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("5")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Druid\Solar Wrath.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("2")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Druid\Moonkin Form.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("1")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Druid\Moonfire.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("3")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Druid\Lunar Strike.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("7")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Druid\Fury of Elune.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("=")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Druid\Celestial Alignment.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("-")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Druid\Regrowth.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("{F8}")
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Druid\Starfall.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		Send("8")
		sleep(50)
		MouseClick($MOUSE_CLICK_LEFT)
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Wait.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Wait Spell.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Mounted.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Attack.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Chat.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Dead.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		$found = True
	EndIf

	$result = _ImageSearchArea(@ScriptDir & "\WOWimages\Looting.png", 1, 1540, 920, 1600, 970, $x, $y, 80, 0)
	If $result = 1 Then
		$found = True
	EndIf

If $screenshot = True Then

	If $found = False Then
		_ScreenCapture_Capture(@ScriptDir & "\WOWimages\Test\Imager" & $i & ".png", 1550, 930, 1590, 960)
		$i = $i + 1
	EndIf
EndIf

	Sleep(Random(250, 400, 1))
WEnd
EndIf