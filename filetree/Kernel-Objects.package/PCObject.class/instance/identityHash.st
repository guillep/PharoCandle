as yet unclassified
identityHash
	"Answer a SmallInteger whose value is related to the receiver's identity. This method must not be overridden, except by SmallInteger. Primitive. Fails if the receiver is a SmallInteger. Essential. See Object documentation whatIsAPrimitive. Do not override!"

	^ self basicIdentityHash bitShift: 18