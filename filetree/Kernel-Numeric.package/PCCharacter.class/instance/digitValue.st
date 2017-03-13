
digitValue
	"Answer 0-9 if the receiver is $0-$9, 10-35 if it is $A-$Z, and -1 otherwise. This is used to parse literal numbers of radix 2-36."

	value <= $9 asciiValue
		ifTrue: [ ^ value - $0 asciiValue ].
	value >= $A asciiValue
		ifTrue: [ value <= $Z asciiValue
				ifTrue: [ ^ value - $A asciiValue + 10 ] ].
	^ -1