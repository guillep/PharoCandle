as yet unclassified
frameSize
	"Answer the size of temporary frame needed to run the receiver."

	"NOTE:  Versions 2.7 and later use two sizes of contexts."

	(self header bitAnd: 16r20000) = 0
		ifTrue: [ ^ 16 ]
		ifFalse: [ ^ 56 ]