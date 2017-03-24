as yet unclassified
respondsTo: aSymbol
	"Answer whether the receiver's class or one of its superclasses has the given symbol as a message selector."

	^ self class canUnderstand: aSymbol