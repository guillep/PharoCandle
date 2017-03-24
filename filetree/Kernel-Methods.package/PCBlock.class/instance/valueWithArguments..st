as yet unclassified
valueWithArguments: anArray
	"Primitive. Evaluate the block represented by the receiver. The argument is an Array whose elements are the arguments for the block. Fail if the length of the Array is not the same as the the number of arguments that the block was expecting. Fail if the block is already being executed. Essential. See Object documentation whatIsAPrimitive."

	<primitive: 206>
	anArray size = nargs
		ifTrue: [ self
				error: 'Attempt to evaluate a block that is already being evaluated.' ]
		ifFalse: [ self
				error: 'This block requires ' , nargs printString , ' arguments.' ]