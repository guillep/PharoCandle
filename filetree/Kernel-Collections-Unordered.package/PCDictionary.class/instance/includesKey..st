as yet unclassified
includesKey: key
	"Answer whether the receiver has a key equal to the argument, key."

	| index |
	index := self findElementOrNil: key.
	(array at: index) == nil
		ifTrue: [ ^ false ]
		ifFalse: [ ^ true ]