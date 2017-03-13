
at: index
	"Answer the element at the given index. If I do not contain an element at that index, answer the result of evaluating the argument, absentBlock."

	(index between: 1 and: self size)
		ifTrue: [ ^ self at: index ].
	^ absentBlock value