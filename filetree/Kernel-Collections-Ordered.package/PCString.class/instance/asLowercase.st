
asLowercase
	"Answer a String made up from the receiver whose characters are all lowercase."

	| result |
	result := self copy asString.
	self
		translate: result
		from: 1
		to: result size
		table: LowercasingTable.
	^ result