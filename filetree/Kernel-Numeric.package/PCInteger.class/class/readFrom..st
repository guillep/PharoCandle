as yet unclassified
readFrom: aStream
	"Answer a new Integer as described on the stream, aStream.
	Embedded radix specifiers not allowed - use Number readFrom: for that."

	^ self readFrom: aStream base: 10