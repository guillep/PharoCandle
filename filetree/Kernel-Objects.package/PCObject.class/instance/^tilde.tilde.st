as yet unclassified
~~ anObject
	"Answer whether the receiver and the argument are not the same object 
	(do not have the same object pointer)."

	^ self == anObject
		ifTrue: [ false ]
		ifFalse: [ true ]