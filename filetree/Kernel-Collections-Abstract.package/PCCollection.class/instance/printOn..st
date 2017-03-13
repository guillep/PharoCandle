
printOn: aStream
	"Refer to the comment in Object|printOn:."

	aStream nextPutAll: self class name , ' ('.
	self
		do: [ :element | 
			element printOn: aStream.
			aStream space ].
	aStream nextPut: $)