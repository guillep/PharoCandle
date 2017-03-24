as yet unclassified
at: key ifAbsent: aBlock
	| index |
	index := self findElementOrNil: key.
	(self basicAt: index) == nil
		ifTrue: [ ^ aBlock value ].
	^ array at: index