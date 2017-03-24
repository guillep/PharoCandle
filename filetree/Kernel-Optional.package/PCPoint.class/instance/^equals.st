as yet unclassified
= aPoint
	self species = aPoint species
		ifTrue:
			[ ^ x = aPoint x and: [ y = aPoint y ]	"Refer to the comment in Object|=." ]
		ifFalse: [ ^ false ]