as yet unclassified
bitXor: anInteger
	"Primitive. Answer an Integer whose bits are the logical XOR of the
	receiver's bits and those of the argument. Fail if the receiver or argument
	is greater than 32 bits. See Object documentation whatIsAPrimitive."

	<primitive: 16>
	^ super bitXor: anInteger