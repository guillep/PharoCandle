
initialize
	"self initialize"

	| order |
	AsciiOrder := (0 to: 255) asByteArray.
	CaseInsensitiveOrder := AsciiOrder copy.
	($a to: $z)
		do: [ :c | 
			CaseInsensitiveOrder
				at: c asciiValue + 1
				put: (CaseInsensitiveOrder at: c asUppercase asciiValue + 1) ].	"case-sensitive compare sorts space, digits, letters, all the rest..."
	CaseSensitiveOrder := (AsciiOrder collect: [ :x | 255 ]) asByteArray.
	order := -1.
	' 0123456789'
		do:
			[ :c | "digits, 0-10" CaseSensitiveOrder at: c asciiValue + 1 put: (order := order + 1) ].
	($a to: $z)
		do: [ :c | 
			"letters, 11-64"
			CaseSensitiveOrder
				at: c asUppercase asciiValue + 1
				put: (order := order + 1).
			CaseSensitiveOrder at: c asciiValue + 1 put: (order := order + 1) ].
	1 to: CaseSensitiveOrder size do: [ :i | 
		"all other characters"
		(CaseSensitiveOrder at: i) = 255
			ifTrue: [ CaseSensitiveOrder at: i put: (order := order + 1) ] ].
	order = 255
		ifFalse: [ self error: 'order problem' ].	"create a table for translating to lower case"
	LowercasingTable := ((0 to: 255)
		collect: [ :i | i asCharacter asLowercase ]) asString