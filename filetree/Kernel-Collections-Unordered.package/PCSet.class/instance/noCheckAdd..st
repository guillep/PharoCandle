
noCheckAdd: anObject
	array at: (self findElementOrNil: anObject) put: anObject.
	tally := tally + 1