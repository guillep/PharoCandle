as yet unclassified
nextPutAll: aCollection
	"Write the elements of the given collection starting at my current position. Answer the collection."

	"Optimization: If the given collection has the same class as my collection, use the fast operation replaceFrom:to:with:."

	| newEnd |
	collection class == aCollection class
		ifFalse: [ aCollection do: [ :v | self nextPut: v ].
			^ aCollection ].
	newEnd := position + aCollection size.
	newEnd > writeLimit
		ifTrue: [ collection := collection
				,
					(collection species
						new: newEnd - writeLimit + (collection size max: 20)).
			writeLimit := collection size ].
	"grow my collection if necessary"
	collection replaceFrom: position + 1 to: newEnd with: aCollection.
	position := newEnd