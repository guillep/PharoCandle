as yet unclassified
readFrom: aStream base: base
	"Answer an instance of one of my concrete subclasses. Initial minus sign 
	accepted, and bases > 10 use letters A-Z. Embedded radix specifiers not 
	allowed--use Number readFrom: for that. Answer zero (not an error) if 
	there are no digits."

	| digit value neg |
	neg := aStream peekFor: $-.
	value := 0.
	[ aStream atEnd ]
		whileFalse: [ digit := aStream next digitValue.
			(digit < 0 or: [ digit >= base ])
				ifTrue: [ aStream skip: -1.
					neg
						ifTrue: [ ^ value negated ].
					^ value ]
				ifFalse: [ value := value * base + digit ] ].
	neg
		ifTrue: [ ^ value negated ].
	^ value