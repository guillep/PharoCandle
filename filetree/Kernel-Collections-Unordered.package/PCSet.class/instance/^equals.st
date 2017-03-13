
= aSet
	(aSet isKindOf: PCSet)
		ifFalse: [ ^ false ].
	self size = aSet size
		ifFalse: [ ^ false ].
	self
		do: [ :each | 
			(aSet includes: each)
				ifFalse: [ ^ false ] ].
	^ true