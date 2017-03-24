as yet unclassified
bitShift: anInteger
	"Primitive. Answer an Integer whose value (in twos-complement 
	representation) is the receiver's value (in twos-complement
	representation) shifted left by the number of bits indicated by the
	argument. Negative arguments shift right. Zeros are shifted in from the
	right in left shifts. The sign bit is extended in right shifts.
	Fail if the receiver or result is greater than 32 bits.
	See Object documentation whatIsAPrimitive."

	<primitive: 17>
	^ super bitShift: anInteger