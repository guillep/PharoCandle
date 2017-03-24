as yet unclassified
asUppercase
	"If the receiver is lowercase, answer its matching uppercase Character."

	(97 <= value and: [ value <= 122 ])
		ifTrue: [ ^ (value - 32) asCharacter ]
		ifFalse: [ ^ self ]	"self isLowercase"