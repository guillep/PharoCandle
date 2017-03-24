as yet unclassified
digitAt: index
	"Primitive. Answer the value of an indexable field in the receiver. Fail if 
	the argument (the index) is not an Integer or is out of bounds. Essential. 
	See Object documentation whatIsAPrimitive."

	<primitive: 60>
	self digitLength < index
		ifTrue: [ ^ 0 ]
		ifFalse: [ ^ super at: index ]