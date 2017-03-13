
to: stop
	"Normally compiled in-line, and therefore not overridable.
	Evaluate aBlock for each element of the interval (self to: stop by: 1)."

	| nextValue |
	nextValue := self.
	[ nextValue <= stop ]
		whileTrue: [ aBlock value: nextValue.
			nextValue := nextValue + 1 ]nextValue := nextValue + step ] ]
		ifFalse: [ [ stop >= nextValue ]
				whileTrue: [ aBlock value: nextValue.
					nextValue := nextValue + step ] ]