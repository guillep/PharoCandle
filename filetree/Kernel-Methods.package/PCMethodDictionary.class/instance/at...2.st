
at: key
	"Set the value at key to be value."

	| index |
	index := self findElementOrNil: key.
	(self basicAt: index) == nil
		ifTrue: [ tally := tally + 1.
			self basicAt: index put: key ].
	array at: index put: value.
	self fullCheck.
	^ value