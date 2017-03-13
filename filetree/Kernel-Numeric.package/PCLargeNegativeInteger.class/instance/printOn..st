
printOn: aStream
	"Refer to the comment in Integer|printOn:base:."

	aStream nextPut: $-.
	super printOn: aStream base: b