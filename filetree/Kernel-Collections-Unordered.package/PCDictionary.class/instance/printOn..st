
printOn: aStream
	aStream nextPutAll: self class name , ' ('.
	self
		associationsDo: [ :element | 
			element printOn: aStream.
			aStream space ].
	aStream nextPut: $)