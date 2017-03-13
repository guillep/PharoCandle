
abs
	"This is faster than using Number abs."

	self < 0.0
		ifTrue: [ ^ 0.0 - self ]
		ifFalse: [ ^ self ]