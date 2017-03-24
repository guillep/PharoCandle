as yet unclassified
printOn: aStream
	aStream nextPutAll: 'ValueLink('.
	value printOn: aStream.
	aStream nextPut: $)