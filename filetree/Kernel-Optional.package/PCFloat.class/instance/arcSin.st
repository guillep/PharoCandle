as yet unclassified
arcSin
	"Answer the angle in radians."

	(self < -1.0 or: [ self > 1.0 ])
		ifTrue: [ self error: 'Value out of range' ].
	(self = -1.0 or: [ self = 1.0 ])
		ifTrue: [ ^ Halfpi ]
		ifFalse: [ ^ (self / (1.0 - (self * self)) sqrt) arcTan ]