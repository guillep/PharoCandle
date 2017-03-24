as yet unclassified
add: newObject
	"Add an element. User error instead of halt. go 10/1/97 09:33"

	| index |
	newObject == nil
		ifTrue: [ self error: 'Sets cannot meaningfully contain nil as an element' ].
	index := self findElementOrNil: newObject.
	(array at: index) == nil
		ifTrue: [ self atNewIndex: index put: newObject ].
	^ newObject