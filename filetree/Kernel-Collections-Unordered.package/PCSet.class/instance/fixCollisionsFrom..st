as yet unclassified
fixCollisionsFrom: index
	"The element at index has been removed and replaced by nil.
	This method moves forward from there, relocating any entries
	that had been placed below due to collisions with this one"

	| length oldIndex newIndex element |
	oldIndex := index.
	length := array size.
	[ oldIndex = length
		ifTrue: [ oldIndex := 1 ]
		ifFalse: [ oldIndex := oldIndex + 1 ].
	(element := self keyAt: oldIndex) == nil ]
		whileFalse: [ newIndex := self findElementOrNil: element.
			oldIndex = newIndex
				ifFalse: [ self swap: oldIndex with: newIndex ] ]