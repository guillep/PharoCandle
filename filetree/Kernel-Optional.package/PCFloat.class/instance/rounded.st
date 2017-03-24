as yet unclassified
rounded
	"Answer the integer nearest the receiver."

	self >= 0.0
		ifTrue: [ ^ (self + 0.5) truncated ]
		ifFalse: [ ^ (self - 0.5) truncated ]