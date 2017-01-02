#tag Class
Protected Class Telefon
	#tag Method, Flags = &h0
		Sub Constructor()
		  dim verbindung as new EthernetPort
		  AddHandler Verbindung.Connected, addressof Verbunden
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Verbunden(Port As Anschluss)
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Verbindung As Anschluss
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
