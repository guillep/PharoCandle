as yet unclassified
printOn: aStream
	"Print in the format (key->value)."

	aStream nextPut: $(.
	key printOn: aStream.
	aStream nextPutAll: '->'.
	value printOn: aStream.
	aStream nextPut: $)