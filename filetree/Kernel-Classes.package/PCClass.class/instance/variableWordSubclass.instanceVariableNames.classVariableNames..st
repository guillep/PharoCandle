as yet unclassified
variableWordSubclass: subclassName instanceVariableNames: someInstVarNames classVariableNames: classVarNames
	^ (self
		newClassBuilderForSubclass: subclassName
		instanceVariableNames: someInstVarNames
		classVariableNames: classVarNames)
		beWords;
		build