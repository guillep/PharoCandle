as yet unclassified
associationAt: key
	^ self associationAt: key ifAbsent: [ self errorKeyNotFound ]