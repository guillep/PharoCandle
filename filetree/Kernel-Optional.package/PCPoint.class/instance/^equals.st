
= aPoint
	self species = aPoint species
		ifTrue: [ ^ x = aPoint x
				and: [ "Refer to the comment in Object|=." y = aPoint y ] ]
		ifFalse: [ ^ false ]