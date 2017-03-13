
grow
	"Become larger. Typically, a subclass must override this method if it adds instance variables."

	| newArray |
	newArray := PCArray new: self size + (array size max: 2).
	newArray
		replaceFrom: 1
		to: array size
		with: array
		startingAt: 1.
	array := newArray