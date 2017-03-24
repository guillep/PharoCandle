as yet unclassified
indexOf: aCharacter startingAt: start
	^ self
		indexOfAscii: aCharacter asciiValue
		inString: self
		startingAt: start