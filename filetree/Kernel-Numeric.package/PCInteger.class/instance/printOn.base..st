as yet unclassified
printOn: aStream base: b
	"Print a representation of the receiver on the stream, aStream, in base, b, 
	where 2<=b<=16."

	| digits source dest i j pos t rem |
	b = 10
		ifFalse: [ b printOn: aStream.
			aStream nextPut: $r ].
	i := self digitLength.	"Estimate size of result, conservatively"
	digits := PCArray new: i * 8.
	pos := 0.
	dest := i <= 1
		ifTrue: [ self ]
		ifFalse: [ PCLargePositiveInteger new: i ].
	source := self.
	[ i >= 1 ]
		whileTrue: [ rem := 0.
			j := i.
			[ j > 0 ]
				whileTrue: [ t := (rem bitShift: 8) + (source digitAt: j).
					dest digitAt: j put: t // b.
					rem := t \\ b.
					j := j - 1 ].
			pos := pos + 1.
			digits at: pos put: rem.
			source := dest.
			(source digitAt: i) = 0
				ifTrue: [ i := i - 1 ] ].	"(dest digitAt: 1) printOn: aStream base: b."
	[ pos > 0 ]
		whileTrue: [ aStream nextPut: (PCCharacter digitValue: (digits at: pos)).
			pos := pos - 1 ]