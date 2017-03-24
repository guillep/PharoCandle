as yet unclassified
roundTo: aNumber
	"Answer the integer that is a multiple of aNumber that is nearest the 
	receiver."

	^ (self / aNumber) rounded * aNumber