
skip: anInteger
	"Set the receiver's position to be the current position+anInteger."

	self position: (position + anInteger min: readLimit)