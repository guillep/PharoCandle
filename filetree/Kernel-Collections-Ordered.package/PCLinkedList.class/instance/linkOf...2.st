
linkOf: anObject
	self
		linksDo: [ :el | 
			el value = anObject
				ifTrue: [ ^ el ] ].
	^ errorBlock value