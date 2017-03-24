as yet unclassified
indexOf: anObject ifAbsent: absentBlock
	"Answer the index of the given object within me. If I do not contain the given object, answer the result of evaluating the given block."

	^ self indexOf: anObject startingAt: 1 ifAbsent: absentBlock