as yet unclassified
remove: oldObject
	"Remove oldObject as one of the receiver's elements. Answer oldObject 
	unless no element is equal to oldObject, in which case, create an error 
	notification."

	^ self remove: oldObject ifAbsent: [ self errorNotFound ]