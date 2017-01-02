#tag Class
Protected Class Tier
Inherits Lebewesen
	#tag Hook, Flags = &h0, Description = 4265736F7267742064656E20576572742066C3BC72204265696E6520766F6E20556E7465726B6C61737365206F64657220496E7374616E7A2E20566F72676162657765727420302E
		Event HoleBeine() As Variant
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mBeine = -1 then
			    dim SubBeine As Variant = RaiseEvent HoleBeine
			    if SubBeine = Nil then 
			      mBeine = 0
			    else
			      mBeine = CType(SubBeine, integer)
			    end if
			  end if
			  return mBeine
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mBeine = value
			End Set
		#tag EndSetter
		Beine As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mBeine As Integer = -1
	#tag EndProperty


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
