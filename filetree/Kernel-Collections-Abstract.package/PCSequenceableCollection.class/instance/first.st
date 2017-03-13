
first
	"Answer the first element of the receiver. Create an error notification if 
	the receiver contains no elements."

	self emptyCheck.
	^ self at: 1