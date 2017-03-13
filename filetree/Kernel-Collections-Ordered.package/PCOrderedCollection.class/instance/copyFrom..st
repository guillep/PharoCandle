
copyFrom: startIndex
	"Answer a copy of the receiver that contains elements from position
	startIndex to endIndex."

	| targetCollection |
	endIndex < startIndex
		ifTrue: [ ^ self species new: 0 ].
	targetCollection := self species new: endIndex + 1 - startIndex.
	startIndex to: endIndex do: [ :index | targetCollection add: (self at: index) ].
	^ targetCollection