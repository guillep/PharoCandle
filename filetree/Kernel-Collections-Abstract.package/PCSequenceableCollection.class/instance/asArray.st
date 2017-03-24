as yet unclassified
asArray
	"Answer an Array whose elements are the elements of the receiver, in the same order."

	| newArray |
	newArray := PCArray new: self size.
	1 to: self size do: [ :index | newArray at: index put: (self at: index) ].
	^ newArray