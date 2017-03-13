
printOn: aStream
	"Refer to the comment in Object|printOn:."

	super printOn: aStream.
	aStream
		nextPutAll: ' selector: ' , selector printString;
		nextPutAll: ' args: ' , arguments printString