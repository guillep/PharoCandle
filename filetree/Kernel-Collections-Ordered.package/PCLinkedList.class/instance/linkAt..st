as yet unclassified
linkAt: index
	^ self linkAt: index ifAbsent: [ self errorSubscriptBounds: index ]