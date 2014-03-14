#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>

Opt("GUIOnEventMode", 1)
$mainwindow = GUICreate("Codigo Buttons", 600, 120, 550, 580)
WinSetOnTop("Codigo Buttons", "", 1)

$codigo = GUICtrlCreateInput("", 20, 10, 56, 19)
$buttonSave = GUICtrlCreateButton("Save", 20, 40, 60)
$button01 = GUICtrlCreateButton("btn01", 90, 40, 60)
$button02 = GUICtrlCreateButton("btn02", 160, 40, 60)
$button03 = GUICtrlCreateButton("btn03", 230, 40, 60)

;; figure out how to read and write to file

GUICtrlSetOnEvent($buttonSave, "fnSave")
GUICtrlSetOnEvent($button01, "fnLoad01")
GUICtrlSetOnEvent($button02, "fnLoad02")
GUICtrlSetOnEvent($button03, "fnLoad03")

Func fnSave()
   ;; bump codes down
   GUICtrlSetData($button03, GUICtrlRead($button02))
   GUICtrlSetData($button02, GUICtrlRead($button01))
   GUICtrlSetData($button01, GUICtrlRead($codigo))
   fnLoad01()
EndFunc

Func fnOpenProduto()
   MouseClick("left", 35, 12)
   MouseMove(570, 140)
   Sleep(200)
   Send("{F3}")
   Sleep(200)
EndFunc

Func fnLoad01()
   fnOpenProduto()
   Send(GUICtrlRead($button01))
   Send("{ENTER}")
EndFunc

Func fnLoad02()
   fnOpenProduto()
   Send(GUICtrlRead($button02))
   Send("{ENTER}")
EndFunc

Func fnLoad03()
   fnOpenProduto()
   Send(GUICtrlRead($button03))
   Send("{ENTER}")
EndFunc

GUISetOnEvent($GUI_EVENT_CLOSE, "CLOSEClicked")
Func CLOSEClicked()
   Exit
EndFunc

GUISetState(@SW_SHOW)
While 1
   Sleep(100)
WEnd