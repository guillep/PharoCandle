
asSet
	"Answer a Set whose elements are the unique elements of the receiver."

	| aSet |
	aSet := PCSet new: self size.
	self do: [ :each | aSet add: each ].
	^ aSet