as yet unclassified
pointsTo: anObject
	"Answer true if the receiver contains a reference to the given object."

	<primitive: 132>
	1 to: self class instSize do: [ :i | 
		(self instVarAt: i) == anObject
			ifTrue: [ ^ true ] ].
	1 to: self basicSize do: [ :i | 
		(self basicAt: i) == anObject
			ifTrue: [ ^ true ] ].
	^ false