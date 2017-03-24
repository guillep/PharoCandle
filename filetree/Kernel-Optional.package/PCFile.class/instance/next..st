as yet unclassified
next: count
	"Answer a String containing the next count bytes of the file. If there are not count bytes left in the file, answer a String with as many bytes as available."

	| buffer n |
	buffer := '' class new: count.
	n := self
		primRead: fileID
		into: buffer
		startingAt: 1
		count: count.
	n < count
		ifTrue: [ buffer := buffer copyFrom: 1 to: n ].
	^ buffer