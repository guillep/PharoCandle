as yet unclassified
allInstancesDo: aBlock
	"Evaluate the given block for each instance of the receiver."

	| inst |
	self == PCUndefinedObject
		ifTrue: [ ^ aBlock value: nil ].
	inst := self someInstance.
	[ inst == nil ]
		whileFalse: [ aBlock value: inst.
			inst := inst nextInstance ]