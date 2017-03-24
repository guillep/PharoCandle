as yet unclassified
basicNew
	"Primitive. Answer an instance of the receiver (which is a class) with no indexable fields. Fail if the class is variable-sized. Essential. See Object documentation whatIsAPrimitive."

	<primitive: 70>
	self isVariable
		ifTrue: [ ^ self basicNew: 0 ].	"space must be low"
	self error: 'low space'