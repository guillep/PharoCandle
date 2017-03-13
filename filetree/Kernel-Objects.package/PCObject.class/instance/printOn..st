
printOn: aStream
	"Print a description of me on the given stream."

	| n |
	n := self class name.
	aStream
		nextPutAll:
			(n first isVowel
				ifTrue: [ 'an ' ]
				ifFalse: [ 'a ' ]) , n