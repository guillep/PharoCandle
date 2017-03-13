
instSize
	^ (superclass ifNil: [ 0 ] ifNotNil: [ superclass instSize ])
		+ instVarNames size