as yet unclassified
skipDelimiters: delimiters startingAt: start
	"Answer the index of the first character in this string starting at the given index that does NOT match one of the delimiters. If the receiver does not contain any of the delimiters, answer size + 1. Assumes the delimiters to be a non-empty string."

	start to: self size do: [ :i | 
		(delimiters indexOf: (self at: i) startingAt: 1) = 0
			ifTrue: [ ^ i ] ].
	^ self size + 1