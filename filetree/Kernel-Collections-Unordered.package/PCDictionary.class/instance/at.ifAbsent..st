as yet unclassified
at: key ifAbsent: aBlock
	| index assoc |
	index := self findElementOrNil: key.
	assoc := array at: index.
	nil == assoc
		ifTrue: [ ^ aBlock value ].
	^ assoc value