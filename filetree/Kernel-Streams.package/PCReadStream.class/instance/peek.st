
peek
	"Answer the next object without advancing my position. Answer nil if there are no more elements."

	| result |
	self atEnd
		ifTrue: [ ^ nil ].
	result := self next.
	position := position - 1.
	^ result