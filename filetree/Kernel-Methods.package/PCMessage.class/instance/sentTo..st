as yet unclassified
sentTo: anObject
	"Answer the result of sending this message to the given object."

	lookupClass == nil
		ifTrue: [ ^ anObject perform: selector withArguments: arguments ]
		ifFalse: [ ^ anObject
				perform: selector
				withArguments: arguments
				inSuperclass: lookupClass ]