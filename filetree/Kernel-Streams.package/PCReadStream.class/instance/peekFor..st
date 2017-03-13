
peekFor: anObject
	"If my next element equals the given object, skip it and answer true. Otherwise, answer false and leave my position unchanged."

	| result |
	result := self peek = anObject.
	result
		ifTrue: [ self skip: 1 ].
	^ result