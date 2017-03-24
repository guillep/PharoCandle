as yet unclassified
findString: key startingAt: start caseSensitive: caseSensitive
	"Answer the index in this String at which the substring key first occurs at or after the given starting index. The match can be case-sensitive or not. Answer zero if no match is found."

	^ self
		findSubstring: key
		in: self
		startingAt: start
		matchTable:
			(caseSensitive
				ifTrue: [ CaseSensitiveOrder ]
				ifFalse: [ CaseInsensitiveOrder ])