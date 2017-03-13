
raisedToInteger: anInteger
	"Answer the receiver raised to the power anInteger where the argument 
	must be a kind of Integer. This is a special case of raisedTo:."

	anInteger isInteger
		ifFalse: [ ^ self error: 'raisedToInteger: only works for integral arguments' ].
	anInteger = 0
		ifTrue: [ ^ 1 ].
	anInteger = 1
		ifTrue: [ ^ self ].
	anInteger > 1
		ifTrue: [ ^ (self * self raisedToInteger: anInteger // 2)
				* (self raisedToInteger: anInteger \\ 2) ].
	^ (self raisedToInteger: anInteger negated) reciprocal