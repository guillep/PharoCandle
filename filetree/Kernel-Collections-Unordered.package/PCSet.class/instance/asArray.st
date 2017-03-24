as yet unclassified
asArray
	"Return an array whose elements are those of the receiver.  "

	| s |
	s := PCWriteStream on: (PCArray new: self size).
	self do: [ :el | s nextPut: el ].
	^ s contents