as yet unclassified
keys
	"Answer a Set containing the receiver's keys."

	| aSet |
	aSet := PCSet new: self size.
	self keysDo: [ :key | aSet add: key ].
	^ aSet