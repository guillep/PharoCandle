
isLetter
	"Answer whether the receiver is a letter."

	^ (65 <= value and: [ value <= 90 ])
		or: [ 97 <= value and: [ value <= 122 ] ]