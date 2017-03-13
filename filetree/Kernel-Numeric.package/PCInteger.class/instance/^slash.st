
/ aNumber
	"Refer to the comment in Number / "

	| quoRem |
	aNumber isInteger
		ifTrue: [ quoRem := self
				digitDiv: aNumber abs
				neg: self negative ~~ aNumber negative.
			(quoRem at: 2) = 0
				ifTrue: [ ^ (quoRem at: 1) normalize ]
				ifFalse: [ ^ self asFloat / aNumber asFloat ] ].
	^ aNumber adaptToInteger: self andSend: #/