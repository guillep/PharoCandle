
atNewIndex: index
	array at: index put: anObject.
	tally := tally + 1.
	self fullCheck