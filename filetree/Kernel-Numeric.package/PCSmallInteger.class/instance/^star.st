
* aNumber
	"Primitive. Multiply the receiver by the argument and answer with the
	result if it is a SmallInteger. Fail if the argument or the result is not a
	SmallInteger. Essential. No Lookup. See Object documentation
	whatIsAPrimitive."

	<primitive: 9>
	self = 0
		ifTrue: [ ^ 0 ].	"This eliminates the need for a self=0 check in LargeInteger *"
	^ super * aNumber