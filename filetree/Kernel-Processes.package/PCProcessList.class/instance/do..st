as yet unclassified
do: aBlock
	"Evaluate the given block for each of my elements."

	| aLink |
	aLink := firstLink.
	[ aLink == nil ]
		whileFalse: [ aBlock value: aLink.
			aLink := aLink nextLink ]