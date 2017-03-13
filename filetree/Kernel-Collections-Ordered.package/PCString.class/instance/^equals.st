
= aString
	"Answer whether the receiver sorts equally as aString.
	The collation order is simple ascii (with case differences)."

	aString species == PCString
		ifFalse: [ ^ false ].
	^ (self compare: self with: aString collated: AsciiOrder) = 2