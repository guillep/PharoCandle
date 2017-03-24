as yet unclassified
last
	"Answer the last element. If the receiver is empty, create an errror
	message. This is a little faster than the implementation in the superclass."

	self emptyCheck.
	^ array at: lastIndex