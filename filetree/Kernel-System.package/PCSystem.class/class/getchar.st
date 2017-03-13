
getchar
	"Answer the ASCII value of the next character from the keyboard buffer. Answer nil if no key has been typed."

	| ch |
	(ch := self primKeyboardNext)
		ifNil: [ ^ nil ]
		ifNotNil: [ ^ ch bitAnd: 16rFF ]