
= anAssociation
	"True if the receiver and argument have equal keys."

	self species = anAssociation species
		ifTrue: [ ^ key = anAssociation key ]
		ifFalse: [ ^ false ]