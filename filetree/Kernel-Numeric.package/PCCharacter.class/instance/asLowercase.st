as yet unclassified
asLowercase
	"If I am uppercase, answer the matching lowercase Character. Otherwise, answer myself."

	(65 <= value and: [ value <= 90 ])
		ifTrue: [ ^ (value + 32) asCharacter ]
		ifFalse: [ ^ self ]	"self isUppercase"