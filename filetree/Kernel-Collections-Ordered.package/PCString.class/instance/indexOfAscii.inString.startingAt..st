as yet unclassified
indexOfAscii: anInteger inString: aString startingAt: start
	"	<primitive: 245>"

	| stringSize |
	stringSize := aString size.
	start to: stringSize do: [ :pos | 
		(aString basicAt: pos) = anInteger
			ifTrue: [ ^ pos ] ].
	^ 0