as yet unclassified
collect: aBlock
	"Return a Set containing the result of evaluating aBlock for each element of this set."

	| newSet |
	tally = 0
		ifTrue: [ ^ PCSet new: 2 ].
	newSet := PCSet new: self size.
	array
		do: [ :each | 
			each == nil
				ifFalse: [ newSet add: (aBlock value: each) ] ].
	^ newSet