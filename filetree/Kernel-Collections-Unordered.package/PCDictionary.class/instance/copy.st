as yet unclassified
copy
	"Must copy all my associations or later stores into either dictionary will effect both the original and the copy."

	^ self basicCopy
		withArray:
			(array
				collect: [ :assoc | 
					assoc
						ifNil: [ nil ]
						ifNotNil: [ PCAssociation key: assoc key value: assoc value ] ])