#tag Class
Protected Class App
Inherits ConsoleApplication
	#tag Event
		Function Run(args() as String) As Integer
		  Dim ZN As New Zeitnehmer
		  Dim TestText As Text = "Ich will einmal wissen, wie lange Xojo benötigt, um eine Text-Variable für diesen Text zu erzeugen!"
		  Print zn.NanosekundenSeitStart.ToText
		  dim zn1 as new Zeitnehmer
		  for q as integer = 0 to 10000
		    dim aufrufe as uint64 = zn.Aufrufe
		  next
		  print zn1.NanosekundenSeitStart.ToText
		  print zn.Aufrufe.totext
		  zn1.Reset
		  for q as integer = 0 to 10000
		    dim gesamtaufrufe as Uint64 = Zeitnehmer.Gesamtaufrufe
		  next
		  print zn1.NanosekundenSeitStart.ToText
		  print Zeitnehmer.Gesamtaufrufe.totext
		  
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Function Nanosekunden(StartDatum As Xojo.core.Date, EndDatum As xojo.Core.Date) As Integer
		  Dim Differenz As xojo.Core.DateInterval = EndDatum - StartDatum
		  Return Differenz.NanoSeconds
		End Function
	#tag EndMethod


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
