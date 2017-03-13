
asString
	"Answer the receiver converted to a String."

	^ (PCString new: self size)
		replaceFrom: 1
		to: self size
		with: self
		startingAt: 1