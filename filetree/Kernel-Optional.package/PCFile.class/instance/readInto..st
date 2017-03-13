
readInto: buffer
	"Read up to count elements into the given array and answer the number of elements actually read. The buffer may either a byte- or word-indexable object."

	^ self
		primRead: fileID
		into: buffer
		startingAt: startIndex
		count: count