as yet unclassified
do: aBlock
	tally = 0
		ifTrue: [ ^ self ].
	1 to: self basicSize do: [ :i | (self basicAt: i) ifNotNil: [ aBlock value: (array at: i) ] ]