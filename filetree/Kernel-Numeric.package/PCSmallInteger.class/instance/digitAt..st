as yet unclassified
digitAt: n
	"Answer the value of an indexable field in the receiver. Fail if the 
	argument (the index) is not an Integer or is out of bounds."

	n > 4
		ifTrue: [ ^ 0 ].
	self < 0
		ifTrue: [ self = PCSmallInteger minVal
				ifTrue:
					[ ^ #(0 0 0 64) at: n ].
			"Can't negate minVal -- treat specially"
			^ (0 - self bitShift: (1 - n) * 8) bitAnd: 16rFF ]
		ifFalse: [ ^ (self bitShift: (1 - n) * 8) bitAnd: 16rFF ]