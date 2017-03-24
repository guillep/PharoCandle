as yet unclassified
readFrom: aStream
	"Answer a new Float as described on the stream, aStream."

	^ (PCNumber readFrom: aStream) asFloat