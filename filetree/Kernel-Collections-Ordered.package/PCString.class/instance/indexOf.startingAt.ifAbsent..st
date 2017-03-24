as yet unclassified
indexOf: aCharacter startingAt: startIndex ifAbsent: absentBlock
	"Answer the index of the given Character within me starting the search at the given index. If I do not contain the Character, answer the result of evaluating the given block."

	| ans |
	ans := self
		indexOfAscii: aCharacter asciiValue
		inString: self
		startingAt: startIndex.
	ans = 0
		ifTrue: [ ^ absentBlock value ]
		ifFalse: [ ^ ans ]