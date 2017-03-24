as yet unclassified
bitOr: anInteger
	"Primitive. Answer an Integer whose bits are the logical OR of the
	receiver's bits and those of the argument. Fail if the receiver or argument
	is greater than 32 bits. See Object documentation whatIsAPrimitive."

	<primitive: 15>
	^ super bitOr: anInteger