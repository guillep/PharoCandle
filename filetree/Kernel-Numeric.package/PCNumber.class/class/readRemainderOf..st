
readRemainderOf: integerPart
	"Read optional fractional part and exponent, and return the final result"

	"MNumber readFrom: (ReadStream on: '3r-22.2')"

	| value fraction fracpos |
	value := integerPart.
	(aStream peekFor: $.)
		ifTrue: [ "<integer>.<fraction>"
			(aStream atEnd not
				and: [ aStream peek digitValue between: 0 and: base - 1 ])
				ifTrue: [ fracpos := aStream position.
					fraction := PCInteger readFrom: aStream base: base.
					fraction := fraction asFloat
						/ (base raisedTo: aStream position - fracpos).
					value := value asFloat + fraction ]
				ifFalse: [ "oops - just <integer>."
					aStream skip: -1.	"un-gobble the period"
					^ value * sign ] ].
	(aStream peekFor: $e)
		ifTrue:
			[ "<integer>e<exponent>" value := value * (base raisedTo: (PCInteger readFrom: aStream)) ].
	^ value * sign