as yet unclassified
quo: aNumber
	"Primitive. Divide the receiver by the argument and answer with the result. Round the result down towards zero to make it a whole integer. Fail if the argument is 0 or is not a MSmallInteger. Optional. See Object documentation whatIsAPrimitive."

	<primitive: 13>
	aNumber = 0
		ifTrue: [ ^ self error: 'Attempt to divide by zero' ].
	aNumber class isSmallInteger
		ifTrue: [ self primitiveFailed ]
		ifFalse: [ ^ super quo: aNumber ]