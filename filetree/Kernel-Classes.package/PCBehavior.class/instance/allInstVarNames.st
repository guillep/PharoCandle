as yet unclassified
allInstVarNames
	"Answer an Array of the names of all my instance variables."

	^ (1 to: self instSize) collect: [ :i | 'instVar' , i printString ]