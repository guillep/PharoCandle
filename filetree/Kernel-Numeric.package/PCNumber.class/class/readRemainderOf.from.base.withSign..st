as yet unclassified
readRemainderOf: integerPart from: aStream base: base withSign: sign
	"Read optional fractional part and exponent, and return the final result"

	"MNumber readFrom: (ReadStream on: '3r-22.2')"

	| value fraction fracpos |
	value := integerPart.
	(aStream peekFor: $.)
		ifTrue: [ (aStream atEnd not
				and: [ aStream peek digitValue between: 0 and: base - 1 ])
				ifTrue: [ fracpos := aStream position.
					fraction := PCInteger readFrom: aStream base: base.
					fraction := fraction asFloat
						/ (base raisedTo: aStream position - fracpos).
					value := value asFloat + fraction ]
				ifFalse: [ aStream skip: -1.	"un-gobble the period"
					^ value * sign ]
			"oops - just <integer>." ].
	"<integer>.<fraction>"
	(aStream peekFor: $e)
		ifTrue:
			[ value := value * (base raisedTo: (PCInteger readFrom: aStream)) ].
	"<integer>e<exponent>"
	^ value * sign