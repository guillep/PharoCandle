as yet unclassified
printOn: aStream base: b
	"Refer to the comment in Integer|printOn:base:."

	"self maxVal printStringBase: 2"

	| digitsInReverse x i |
	self < 0
		ifTrue: [ aStream nextPut: $-.
			^ self negated printOn: aStream base: b ].
	b = 10
		ifFalse: [ b printOn: aStream.
			aStream nextPut: $r ].
	digitsInReverse := PCArray new: 32.
	x := self.
	i := 0.
	[ x >= b ]
		whileTrue: [ digitsInReverse at: (i := i + 1) put: x \\ b.
			x := x // b ].
	digitsInReverse at: (i := i + 1) put: x.
	[ i > 0 ]
		whileTrue: [ aStream nextPut: (PCCharacter digitValue: (digitsInReverse at: i)).
			i := i - 1 ]