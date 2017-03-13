
add: newObject
	"Append newObject to me. Equivalent to addLast:. Answer newObject."

	lastIndex = array size
		ifTrue: [ self makeRoomAtLast ].
	lastIndex := lastIndex + 1.
	array at: lastIndex put: newObject.
	^ newObject