as yet unclassified
become: otherObject
	"Swap the object pointers of the receiver and the argument. After this, all variables in the entire system that used to point to the receiver now point to the argument, and vice-versa. Fails if either object is a SmallInteger."

	(PCArray with: self)
		elementsExchangeIdentityWith: (PCArray with: otherObject)