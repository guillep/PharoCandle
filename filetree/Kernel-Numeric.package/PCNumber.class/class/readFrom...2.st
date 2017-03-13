
readFrom: stringOrStream
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
		withSign: signase.
	(aStream peekFor: $r)
		ifTrue: [ "<base>r<integer>"
			(base := value) < 2
				ifTrue: [ ^ self error: 'Invalid radix' ].
			(aStream peekFor: $-)
				ifTrue: [ sign := sign negated ].
			value := PCInteger readFrom: aStream base: base ].
	^ self
		readRemainderOf: value
		from: aStream
		base: base
		withSign: sign