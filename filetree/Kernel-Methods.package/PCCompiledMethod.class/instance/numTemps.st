
numTemps
	"Answer the number of temporary variables used by this method."

	^ (self header bitShift: -18) bitAnd: 16r3F