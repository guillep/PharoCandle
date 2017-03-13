
asArray
	"Answer an Array whose elements are the elements of this collection. The order in which elements are added depends on the order in which this collection enumerates its elements. In the case of unordered collections, the ordering is not necessarily the same for multiple requests for the conversion."

	| result i |
	result := PCArray new: self size.
	i := 0.
	self do: [ :each | result at: (i := i + 1) put: each ].
	^ result