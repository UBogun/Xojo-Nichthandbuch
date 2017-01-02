#tag Class
Protected Class Zeitnehmer
	#tag Method, Flags = &h0
		Sub Constructor()
		  Reset
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NanosekundenSeitStart() As Int64
		  EndZeit = Xojo.Core.Date.Now
		  Dim Differenz As Xojo.Core.DateInterval = EndZeit - StartZeit
		  Dim Total As Int64 = 1000000000 * Differenz.Seconds + Differenz.NanoSeconds
		  mAufrufe = mAufrufe + 1
		  mGesamtaufrufe = mGesamtaufrufe + 1
		  Return Total
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Reset()
		  StartZeit = Xojo.Core.Date.Now
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mAufrufe
			End Get
		#tag EndGetter
		Aufrufe As UInteger
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private EndZeit As xojo.Core.Date
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mGesamtaufrufe
			End Get
		#tag EndGetter
		Shared Gesamtaufrufe As UInt64
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mAufrufe As UInteger
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Shared mGesamtaufrufe As UInt64
	#tag EndProperty

	#tag Property, Flags = &h21
		Private StartZeit As xojo.Core.Date
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Aufrufe"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
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
