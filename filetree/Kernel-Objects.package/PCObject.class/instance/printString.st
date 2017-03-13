
printString
	"Answer a string describing me."

	| stream |
	stream := PCWriteStream on: (PCString new: 100).
	self printOn: stream.
	^ stream contents