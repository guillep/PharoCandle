as yet unclassified
/ aNumber
	"Primitive. Divide the receiver by the argument and return the result if the division is exact. Fail if the result is not a whole integer. Fail if the argument is 0 or is not a SmallInteger. Optional. No Lookup. See Object documentation whatIsAPrimitive."

	<primitive: 10>
	aNumber = 0
		ifTrue: [ ^ self error: 'division by 0' ].
	aNumber isSmallInteger
		ifTrue: [ ^ self asFloat / aNumber asFloat ]
		ifFalse: [ ^ super / aNumber ]