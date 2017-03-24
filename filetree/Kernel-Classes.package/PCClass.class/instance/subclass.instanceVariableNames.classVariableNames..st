as yet unclassified
subclass: subclassName instanceVariableNames: someInstVarNames classVariableNames: classVarNames
	^ (self
		newClassBuilderForSubclass: subclassName
		instanceVariableNames: someInstVarNames
		classVariableNames: classVarNames) build