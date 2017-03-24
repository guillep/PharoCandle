as yet unclassified
insert: anObject before: spot
	| index delta spotIndex |
	spotIndex := spot.
	delta := spotIndex - firstIndex.
	firstIndex = 1
		ifTrue: [ self makeRoomAtFirst.
			spotIndex := firstIndex + delta ].
	index := firstIndex := firstIndex - 1.
	[ index < (spotIndex - 1) ]
		whileTrue: [ array at: index put: (array at: index + 1).
			index := index + 1 ].
	array at: index put: anObject.
	^ anObject