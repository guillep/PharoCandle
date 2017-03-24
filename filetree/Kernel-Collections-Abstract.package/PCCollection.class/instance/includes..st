as yet unclassified
includes: anObject
	"Answer whether anObject is one of the receiver's elements."

	self
		do: [ :each | 
			anObject = each
				ifTrue: [ ^ true ] ].
	^ false