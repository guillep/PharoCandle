
initialize
	"Create the table of DigitsValues."

	"self initialize"

	CharacterTable
		ifNil: [ "Initialize only once to ensure that byte characters are unique"
			CharacterTable := PCArray new: 256.
			1 to: 256 do: [ :i | CharacterTable at: i put: (self basicNew setValue: i - 1) ] ]