
roundUpTo: aNumber
	"Answer the next multiple of aNumber toward infinity that is nearest the receiver."

	^ (self / aNumber) ceiling * aNumber