#include <Tesseract.au3>
#include <ImageSearch.au3>
$delay1=500
$delay2=1000


While 1
AutoItSetOption("MouseCoordMode", 0)

$x1=0
$y1=0


WinActivate("BlueStacks App Player")
sleep($delay1)
MouseClick("left",357,192)
sleep($delay1)
MouseClick("left",303,532)
sleep(3000)
MouseClick("left",325,971)

$mon = _TesseractWinCapture("BlueStacks App Player", "", 0, "", 1, 2, 300, 640, 400, 1000, 0)
;MsgBox(0, "TesseractControlFind", $mon)
ConsoleWrite($mon)
sleep($delay1)

sleep($delay1)
MouseClick("left",469,968)
sleep($delay1)
MouseClick("left",469,968)
sleep($delay1)
MouseClick("left",469,968)
sleep($delay1)
MouseClick("left",469,968)
sleep($delay1)
MouseClick("left",469,968)

sleep($delay1)
MouseClick("left",325,971)

sleep($delay1)
MouseClick("left",325,971)
sleep($delay1)
MouseClick("left",325,971)
sleep($delay1)
MouseClick("left",325,971)
sleep($delay1)
MouseClick("left",325,971)
sleep($delay1)
MouseClick("left",325,971)

sleep($delay1)
MouseClick("left",325,971)

sleep($delay1)
MouseClick("left",469,968)
sleep($delay1)
MouseClick("left",469,968)
sleep($delay1)
MouseClick("left",469,968)
sleep($delay1)
MouseClick("left",469,968)
sleep($delay1)
MouseClick("left",469,968)

sleep($delay1)
MouseClick("left",325,971)

For $i = 5 To 1 Step -1
   AutoItSetOption("MouseCoordMode", 1)
   $xx1=0
   $yy1=0
   WinActivate("BlueStacks App Player")
   sleep($delay2)
   $result = _ImageSearch("check5.bmp",1,$xx1,$yy1,0)
   if $result=1 Then
	  ;sleep(1000*$delay_multiply)
	  MouseMove($xx1,$yy1,0)
	  sleep($delay1)
	  MouseClick("left")
   Else
	  ConsoleWrite("ERROR TO FIND IMAGE")
   endif
   sleep($delay1)
   Send($mon)
   sleep($delay1)
   AutoItSetOption("MouseCoordMode", 0)
   MouseClick("left",325,971)
Next


sleep(3000)
MouseClick("left",318,569)
sleep(1000)
MouseClick("left",612,62)
sleep(3000)

WEnd