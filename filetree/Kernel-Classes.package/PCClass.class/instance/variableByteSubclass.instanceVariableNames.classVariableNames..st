as yet unclassified
variableByteSubclass: subclassName instanceVariableNames: someInstVarNames classVariableNames: classVarNames
	^ (self
		newClassBuilderForSubclass: subclassName
		instanceVariableNames: someInstVarNames
		classVariableNames: classVarNames)
		beBytes;
		build