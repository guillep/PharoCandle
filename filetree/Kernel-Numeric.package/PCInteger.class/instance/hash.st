
hash
	"Hash is reimplemented because = is implemented."

	^ (self lastDigit bitShift: 8) + (self digitAt: 1)