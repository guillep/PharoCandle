
ceiling
	"Answer the integer nearest the receiver toward positive infinity."

	self <= 0
		ifTrue: [ ^ self truncated ]
		ifFalse: [ ^ self negated floor negated ]