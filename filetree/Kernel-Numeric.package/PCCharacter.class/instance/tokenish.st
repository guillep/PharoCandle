as yet unclassified
tokenish
	"Answer true if the receiver is a valid token-character--that is, a letter, digit, or colon."

	^ self isLetter or: [ self isDigit or: [ self = $: ] ]