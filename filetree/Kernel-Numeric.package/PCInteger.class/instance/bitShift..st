as yet unclassified
bitShift: shiftCount
	"Answer an Integer whose value (in twos-complement representation) is 
	the receiver's value (in twos-complement representation) shifted left by 
	the number of bits indicated by the argument. Negative arguments shift 
	right. Zeros are shifted in from the right in left shifts."

	| rShift |
	shiftCount >= 0
		ifTrue: [ ^ self digitLshift: shiftCount ].
	rShift := 0 - shiftCount.
	^ (self
		digitRshift: (rShift bitAnd: 7)
		bytes: (rShift bitShift: -3)
		lookfirst: self digitLength) normalize