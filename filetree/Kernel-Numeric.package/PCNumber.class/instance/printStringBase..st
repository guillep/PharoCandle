
printStringBase: base
	| stream |
	stream := PCWriteStream on: (PCString new: 100).
	self printOn: stream base: base.
	^ stream contents