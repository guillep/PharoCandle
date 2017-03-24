as yet unclassified
= otherCollection
	"Answer whether the species of the receiver is the same as
	otherCollection's species, and the receiver's size is the same as
	otherCollection's size, and each of the receiver's elements equal the
	corresponding element of otherCollection."

	| size |
	(size := self size) = otherCollection size
		ifFalse: [ ^ false ].
	self species == otherCollection species
		ifFalse: [ ^ false ].
	1 to: size do: [ :index | 
		(self at: index) = (otherCollection at: index)
			ifFalse: [ ^ false ] ].
	^ true