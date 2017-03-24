as yet unclassified
printOn: aStream
	aStream nextPutAll: '#('.
	self
		do: [ :each | 
			each printOn: aStream.
			aStream space ].
	aStream nextPut: $)