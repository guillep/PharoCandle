
keys
	"Answer an array of the receiver's keys."

	| result |
	result := PCOrderedCollection new: self size.
	self keysDo: [ :key | result add: key ].
	^ result asArray