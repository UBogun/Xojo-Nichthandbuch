#tag Class
Protected Class Hund
Inherits Tier
	#tag Event
		Function HoleBeine() As Variant
		  Dim SubBeine As Variant = RaiseEvent HoleBeine
		  Return if (SubBeine = nil, 4, SubBeine)
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Constructor()
		  Lebewesen(me).Laut = "Wuff"
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event HoleBeine() As Variant
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mLaut
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mLaut = value
			  // mach noch irgendwas individuelles
			  
			End Set
		#tag EndSetter
		Laut As Text
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Beine"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Laut"
			Group="Behavior"
			Type="Text"
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
