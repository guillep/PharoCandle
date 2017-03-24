as yet unclassified
allInstances
	"Answer a collection of all current instances of the receiver."

	| all |
	all := PCOrderedCollection new.
	self
		allInstancesDo: [ :x | 
			x == all
				ifFalse: [ all add: x ] ].
	^ all asArray