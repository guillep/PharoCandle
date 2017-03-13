
digitAt: n
	"Fails. The digits of a small integer can not be modified."

	self error: 'You cannot store in a SmallInteger'or is out of bounds."

	n > 4
		ifTrue: [ ^ 0 ].
	self < 0
		ifTrue: [ self = PCSmallInteger minVal
				ifTrue:
					[ "Can't negate minVal -- treat specially" ^ #(0 0 0 64) at: n ].
			^ (0 - self bitShift: (1 - n) * 8) bitAnd: 16rFF ]
		ifFalse: [ ^ (self bitShift: (1 - n) * 8) bitAnd: 16rFF ]