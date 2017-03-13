
asString
	"Answer a string containing my characters."

	| sz result |
	sz := self size.
	result := PCString new: sz.
	result
		replaceFrom: 1
		to: sz
		with: self
		startingAt: 1.
	^ result