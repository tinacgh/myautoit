#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <FileConstants.au3>

Opt("GUIOnEventMode", 1)
$mainwindow = GUICreate("Codigo Buttons", 600, 120, 450, 580)
WinSetOnTop("Codigo Buttons", "", 1)

$codigo = GUICtrlCreateInput("", 20, 10, 56, 19)
$buttonSave = GUICtrlCreateButton("Save", 20, 40, 60)
$button01 = GUICtrlCreateButton("btn01", 90, 40, 60)
$button02 = GUICtrlCreateButton("btn02", 160, 40, 60)
$button03 = GUICtrlCreateButton("btn03", 230, 40, 60)
$button04 = GUICtrlCreateButton("btn04", 300, 40, 60)
$button05 = GUICtrlCreateButton("btn05", 370, 40, 60)
$button06 = GUICtrlCreateButton("btn06", 440, 40, 60)
$button07 = GUICtrlCreateButton("btn07", 510, 40, 60)

$button08 = GUICtrlCreateButton("btn08", 20, 75, 60)
$button09 = GUICtrlCreateButton("btn09", 90, 75, 60)
$button10 = GUICtrlCreateButton("btn10", 160, 75, 60)
$button11 = GUICtrlCreateButton("btn11", 230, 75, 60)
$button12 = GUICtrlCreateButton("btn12", 300, 75, 60)
$button13 = GUICtrlCreateButton("btn13", 370, 75, 60)
$button14 = GUICtrlCreateButton("btn14", 440, 75, 60)
$button15 = GUICtrlCreateButton("btn15", 510, 75, 60)

;; figure out how to read and write to file

GUICtrlSetOnEvent($codigo, "fnSave")

GUICtrlSetOnEvent($buttonSave, "fnSave")
GUICtrlSetOnEvent($button01, "fnLoad01")
GUICtrlSetOnEvent($button02, "fnLoad02")
GUICtrlSetOnEvent($button03, "fnLoad03")
GUICtrlSetOnEvent($button04, "fnLoad04")
GUICtrlSetOnEvent($button05, "fnLoad05")
GUICtrlSetOnEvent($button06, "fnLoad06")
GUICtrlSetOnEvent($button07, "fnLoad07")
GUICtrlSetOnEvent($button08, "fnLoad08")
GUICtrlSetOnEvent($button09, "fnLoad09")
GUICtrlSetOnEvent($button10, "fnLoad10")
GUICtrlSetOnEvent($button11, "fnLoad11")
GUICtrlSetOnEvent($button12, "fnLoad12")
GUICtrlSetOnEvent($button13, "fnLoad13")
GUICtrlSetOnEvent($button14, "fnLoad14")
GUICtrlSetOnEvent($button15, "fnLoad15")

fnLoad()

Func fnLoad()
   Local Const $codigoFile = "C:\Users\Heitor\Desktop\install Autoit\Scripts\buttonsdata.txt"
   Local $hFileOpen = FileOpen($codigoFile, $FO_READ)
   
   ;; assign button values
   Local $line = FileReadLine($hFileOpen)
   GUICtrlSetData($button01, $line)

   Local $line = FileReadLine($hFileOpen)
   GUICtrlSetData($button02, $line)

   Local $line = FileReadLine($hFileOpen)
   GUICtrlSetData($button03, $line)
   
   Local $line = FileReadLine($hFileOpen)
   GUICtrlSetData($button04, $line)
   
   Local $line = FileReadLine($hFileOpen)
   GUICtrlSetData($button05, $line)
   
   Local $line = FileReadLine($hFileOpen)
   GUICtrlSetData($button06, $line)
   
   Local $line = FileReadLine($hFileOpen)
   GUICtrlSetData($button07, $line)
   
   Local $line = FileReadLine($hFileOpen)
   GUICtrlSetData($button08, $line)
   
   Local $line = FileReadLine($hFileOpen)
   GUICtrlSetData($button09, $line)
   
   Local $line = FileReadLine($hFileOpen)
   GUICtrlSetData($button10, $line)
   
   Local $line = FileReadLine($hFileOpen)
   GUICtrlSetData($button11, $line)
   
   Local $line = FileReadLine($hFileOpen)
   GUICtrlSetData($button12, $line)
   
   Local $line = FileReadLine($hFileOpen)
   GUICtrlSetData($button13, $line)
   
   Local $line = FileReadLine($hFileOpen)
   GUICtrlSetData($button14, $line)
   
   Local $line = FileReadLine($hFileOpen)
   GUICtrlSetData($button15, $line)
   
   FileClose($hFileOpen)
EndFunc

Func fnSave()
   Local Const $codigoFile = "C:\Users\Heitor\Desktop\install Autoit\Scripts\buttonsdata.txt"
   Local $hFileOpen = FileOpen($codigoFile, $FO_OVERWRITE)
   
   ;; bump codes down
   GUICtrlSetData($button15, StringUpper(GUICtrlRead($button14)))
   GUICtrlSetData($button14, StringUpper(GUICtrlRead($button13)))
   GUICtrlSetData($button13, StringUpper(GUICtrlRead($button12)))
   GUICtrlSetData($button12, StringUpper(GUICtrlRead($button11)))
   GUICtrlSetData($button11, StringUpper(GUICtrlRead($button10)))
   GUICtrlSetData($button10, StringUpper(GUICtrlRead($button09)))
   GUICtrlSetData($button09, StringUpper(GUICtrlRead($button08)))
   GUICtrlSetData($button08, StringUpper(GUICtrlRead($button07)))
   GUICtrlSetData($button07, StringUpper(GUICtrlRead($button06)))
   GUICtrlSetData($button06, StringUpper(GUICtrlRead($button05)))
   GUICtrlSetData($button05, StringUpper(GUICtrlRead($button04)))
   GUICtrlSetData($button04, StringUpper(GUICtrlRead($button03)))
   GUICtrlSetData($button03, StringUpper(GUICtrlRead($button02)))
   GUICtrlSetData($button02, StringUpper(GUICtrlRead($button01)))
   GUICtrlSetData($button01, StringUpper(GUICtrlRead($codigo)))
   
   FileWriteLine($hFileOpen, GUICtrlRead($button01))
   FileWriteLine($hFileOpen, GUICtrlRead($button02))
   FileWriteLine($hFileOpen, GUICtrlRead($button03))
   FileWriteLine($hFileOpen, GUICtrlRead($button04))
   FileWriteLine($hFileOpen, GUICtrlRead($button05))
   FileWriteLine($hFileOpen, GUICtrlRead($button06))
   FileWriteLine($hFileOpen, GUICtrlRead($button07))
   FileWriteLine($hFileOpen, GUICtrlRead($button08))
   FileWriteLine($hFileOpen, GUICtrlRead($button09))
   FileWriteLine($hFileOpen, GUICtrlRead($button10))
   FileWriteLine($hFileOpen, GUICtrlRead($button11))
   FileWriteLine($hFileOpen, GUICtrlRead($button12))
   FileWriteLine($hFileOpen, GUICtrlRead($button13))
   FileWriteLine($hFileOpen, GUICtrlRead($button14))
   FileWriteLine($hFileOpen, GUICtrlRead($button15))
   
   ;; clean input and load first code
   GUICtrlSetData($codigo, "")
   fnLoad01()
EndFunc

Func fnOpenProduto()
   WinActivate("Produto")
   MouseMove(570, 140, 3)
   Send("{F3}")
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

Func fnLoad04()
   fnOpenProduto()
   Send(GUICtrlRead($button04))
   Send("{ENTER}")
EndFunc

Func fnLoad05()
   fnOpenProduto()
   Send(GUICtrlRead($button05))
   Send("{ENTER}")
EndFunc

Func fnLoad06()
   fnOpenProduto()
   Send(GUICtrlRead($button06))
   Send("{ENTER}")
EndFunc

Func fnLoad07()
   fnOpenProduto()
   Send(GUICtrlRead($button07))
   Send("{ENTER}")
EndFunc

Func fnLoad08()
   fnOpenProduto()
   Send(GUICtrlRead($button08))
   Send("{ENTER}")
EndFunc

Func fnLoad09()
   fnOpenProduto()
   Send(GUICtrlRead($button09))
   Send("{ENTER}")
EndFunc

Func fnLoad10()
   fnOpenProduto()
   Send(GUICtrlRead($button10))
   Send("{ENTER}")
EndFunc

Func fnLoad11()
   fnOpenProduto()
   Send(GUICtrlRead($button11))
   Send("{ENTER}")
EndFunc

Func fnLoad12()
   fnOpenProduto()
   Send(GUICtrlRead($button12))
   Send("{ENTER}")
EndFunc

Func fnLoad13()
   fnOpenProduto()
   Send(GUICtrlRead($button13))
   Send("{ENTER}")
EndFunc

Func fnLoad14()
   fnOpenProduto()
   Send(GUICtrlRead($button14))
   Send("{ENTER}")
EndFunc

Func fnLoad15()
   fnOpenProduto()
   Send(GUICtrlRead($button15))
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