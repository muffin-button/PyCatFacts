Dim o, sapi, i

' turn up the volume
Set WshShell = CreateObject("WScript.Shell")
WshShell.SendKeys(chr(&hAD))
For i = 1 To 100
	WshShell.SendKeys(chr(&hAF)) 
Next

' call for a cat fact
Set o = CreateObject("MSXML2.XMLHTTP")
o.open "GET", "http://0.0.0.0/fact", False
o.send

' text to speech
Set sapi=CreateObject("sapi.spvoice") 
sapi.Speak ("thank you for subscribing to cat facts")
WScript.Sleep(1000)
sapi.Speak o.responseText