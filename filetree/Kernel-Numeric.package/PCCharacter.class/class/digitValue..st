
digitValue: x
	"Answer the Character whose digit value is x. For example, answer $9 for x=9, $0 for x=0, $A for x=10, $Z for x=35."

	| i |
	i := x asInteger.
	^ CharacterTable
		at:
			(i < 10
				ifTrue: [ 48 + i ]
				ifFalse: [ 55 + i ]) + 1