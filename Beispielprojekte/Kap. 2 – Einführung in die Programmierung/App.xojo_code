#tag Class
Protected Class App
Inherits ConsoleApplication
	#tag Event
		Function Run(args() as String) As Integer
		  Dim Antwort As Text
		  Do
		    Print "Erste Zahl?"
		    Dim MeineZahl As Integer = Integer.Parse(Input.Totext)
		    
		    Print "Zweite Zahl?"
		    Dim ZweiteZahl As Integer = Integer.Parse(Input.ToText)
		    
		    GeradeZahlAuswerten (MeineZahl, "Erste Zahl")
		    GeradeZahlAuswerten (ZweiteZahl, "Zweite Zahl")
		    
		    Print "Nochmal? (J/N)"
		     Antwort  = Input.ToText
		  loop until  Antwort = "N"
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub GeradeZahlAuswerten(Zahl As Integer, Zahlname As Text)
		  If IstGerade (Zahl) Then
		    Print Zahlname + " ist gerade"
		  else
		    Print Zahlname + " ist ungerade"
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4C69656665727420547275652C2066616C6C73205A61686C20676572616465206973742E
		Function IstGerade(Zahl As Integer) As Boolean
		  Return zahl mod 2 = 0
		End Function
	#tag EndMethod


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
