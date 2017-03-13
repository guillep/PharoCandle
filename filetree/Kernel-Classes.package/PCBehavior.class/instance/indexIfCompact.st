
indexIfCompact
	"If my compact class index is non-zero, then instances of this class will be compact, and their class will have an entry in Smalltalk compactClassesArray."

	^ (format bitShift: -11) bitAnd: 16r1F