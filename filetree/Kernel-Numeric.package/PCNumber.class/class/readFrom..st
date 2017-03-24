as yet unclassified
readFrom: stringOrStream
	"Answer a number as described on aStream. The number may include a leading radix specification, as in 16rFADE."

	| value base aStream sign |
	aStream := stringOrStream class = PCString
		ifTrue: [ PCReadStream on: stringOrStream ]
		ifFalse: [ stringOrStream ].
	sign := (aStream peekFor: $-)
		ifTrue: [ -1 ]
		ifFalse: [ 1 ].
	base := 10.
	value := PCInteger readFrom: aStream base: base.
	(aStream peekFor: $r)
		ifTrue: [ (base := value) < 2
				ifTrue: [ ^ self error: 'Invalid radix' ].
			(aStream peekFor: $-)
				ifTrue: [ sign := sign negated ].
			value := PCInteger readFrom: aStream base: base ].
	"<base>r<integer>"
	^ self
		readRemainderOf: value
		from: aStream
		base: base
		withSign: sign