as yet unclassified
newClassFormat
	"<2 bits of size><5 bits of compact class index><4 bits of inst spec><6 bits of size><1 bit with a 0>"

	| size1 instSpec size2 compactClassIndex |
	size1 := (self instSize + 1) // 64 bitAnd: 16r3.
	instSpec := self isCompiledMethod
		ifTrue: [ 12 ]
		ifFalse: [ self isWeak
				ifTrue: [ 4 ]
				ifFalse: [ self isPointers
						ifTrue: [ self isVariable
								ifTrue: [ self instSize > 0
										ifTrue: [ 3 ]
										ifFalse: [ 2 ] ]
								ifFalse: [ self instSize > 0
										ifTrue: [ 1 ]
										ifFalse: [ 0 ] ] ]
						ifFalse: [ self isWords
								ifTrue: [ 6 ]
								ifFalse: [ 8 ] ] ] ].
	size2 := (self instSize + 1) \\ 64 bitAnd: 16r3F.
	compactClassIndex := self compactClassIndex.
	^ (size1 bitShift: 16) + (compactClassIndex bitShift: 11)
		+ (instSpec bitShift: 7) + (size2 bitShift: 1)