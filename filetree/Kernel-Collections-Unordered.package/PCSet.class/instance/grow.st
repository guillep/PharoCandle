as yet unclassified
grow
	"Grow the elements array and reinsert the old elements."

	| oldElements |
	oldElements := array.
	array := PCArray new: array size + (array size max: 2).
	tally := 0.
	oldElements
		do: [ :each | 
			each == nil
				ifFalse: [ self noCheckAdd: each ] ]