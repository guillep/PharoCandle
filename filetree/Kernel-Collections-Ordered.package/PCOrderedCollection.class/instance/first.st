
first
	"Answer the first element. If the receiver is empty, create an errror
	message. This is a little faster than the implementation in the superclass."

	self emptyCheck.
	^ array at: firstIndex