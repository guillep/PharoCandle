as yet unclassified
readFrom: stringOrStream base: base
	"Answer a number as described on aStream in the given number base."

	| aStream sign |
	aStream := stringOrStream class = PCString
		ifTrue: [ PCReadStream on: stringOrStream ]
		ifFalse: [ stringOrStream ].
	sign := (aStream peekFor: $-)
		ifTrue: [ -1 ]
		ifFalse: [ 1 ].
	^ self
		readRemainderOf: (PCInteger readFrom: aStream base: base)
		from: aStream
		base: base
		withSign: sign