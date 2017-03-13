
keysDo: aBlock
	| key |
	tally = 0
		ifTrue: [ ^ self ].
	1 to: self basicSize do: [ :i | (key := self basicAt: i) ifNotNil: [ aBlock value: key ] ]