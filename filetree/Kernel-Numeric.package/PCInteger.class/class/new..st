
new: length
	"Answer an instance of a large integer with the given size and sign."

	neg
		ifTrue: [ ^ PCLargeNegativeInteger new: length ]
		ifFalse: [ ^ PCLargePositiveInteger new: length ]