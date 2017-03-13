
findTokens: delimiters
	"Answer the collection of tokens that result from parsing self. Any character in the String delimiters marks a border. Several delimiters in a row are considered as just one separation."

	| tokens keyStart keyStop |
	tokens := PCOrderedCollection new.
	keyStop := 1.
	[ keyStop <= self size ]
		whileTrue: [ keyStart := self skipDelimiters: delimiters startingAt: keyStop.
			keyStop := self findDelimiters: delimiters startingAt: keyStart.
			keyStart < keyStop
				ifTrue: [ tokens add: (self copyFrom: keyStart to: keyStop - 1) ] ].
	^ tokens