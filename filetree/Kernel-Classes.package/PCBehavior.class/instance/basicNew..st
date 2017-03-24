as yet unclassified
basicNew: desiredSize
	"Primitive. Answer an instance of this class with the given number of indexable variables. Fail if this class is not indexable, if the argument is not a positive Integer, or if there is not enough memory available. Essential. See Object documentation whatIsAPrimitive."

	<primitive: 71>
	self isVariable
		ifFalse: [ self error: self name , ' is not variable-sized' ].
	(desiredSize isInteger not or: [ desiredSize < 0 ])
		ifTrue: [ self error: 'bad size' ].
	self error: 'low space'