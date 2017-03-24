as yet unclassified
asFloat
	"Answer a Float that represents the value of the receiver.
	Optimized to process only the significant digits of a LargeInteger."

	| sum firstByte shift |
	shift := 0.
	sum := 0.
	firstByte := self size - 7 max: 1.
	firstByte to: self size do: [ :byteIndex | 
		sum := ((self digitAt: byteIndex) asFloat timesTwoPower: shift) + sum.
		shift := shift + 8 ].
	^ sum * self sign asFloat timesTwoPower: (firstByte - 1) * 8