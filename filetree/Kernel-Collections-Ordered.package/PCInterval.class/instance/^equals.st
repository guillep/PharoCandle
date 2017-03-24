as yet unclassified
= anInterval
	"Answer true if my species and anInterval species are equal, and
	if our starts, steps and sizes are equal."

	self species == anInterval species
		ifTrue: [ ^ start = anInterval first
				and: [ step = anInterval increment and: [ self size = anInterval size ] ] ]
		ifFalse: [ ^ false ]