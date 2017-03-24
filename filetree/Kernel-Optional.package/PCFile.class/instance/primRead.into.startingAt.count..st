as yet unclassified
primRead: id into: byteArray startingAt: startIndex count: count
	"Read up to count elements into the given buffer and answer the number of elements actually read. The buffer may either a byte- or word-indexable object."

	<primitive: 'primitiveFileRead' module: 'FilePlugin'>
	self primitiveFailed