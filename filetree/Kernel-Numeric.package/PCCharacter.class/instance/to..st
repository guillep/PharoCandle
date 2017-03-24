as yet unclassified
to: other
	"Answer with a collection of all characters in the given ASCII range. For example, $a to: $z"

	^ (self asciiValue to: other asciiValue)
		collect: [ :i | i asCharacter ]