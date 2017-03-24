as yet unclassified
do: aBlock
	tally = 0
		ifTrue: [ ^ self ].
	array
		do: [ :element | 
			element == nil
				ifFalse: [ aBlock value: element ] ]