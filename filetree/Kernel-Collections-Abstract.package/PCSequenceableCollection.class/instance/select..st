as yet unclassified
select: aBlock
	"Refer to the comment in Collection|select:."

	| s |
	s := PCWriteStream on: (self species new: self size).
	1 to: self size do: [ :i | 
		(aBlock value: (self at: i))
			ifTrue: [ s nextPut: (self at: i) ] ].
	^ s contents