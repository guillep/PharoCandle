as yet unclassified
pastEndPut: anObject
	"Grow my collection."

	"Details: In general, double my size. Grow by at least 20 elements if my size is under 20 and grow by 20000 if my size is over 20000."

	collection := collection
		, (collection class new: ((collection size max: 20) min: 20000)).
	writeLimit := collection size.
	collection at: (position := position + 1) put: anObject