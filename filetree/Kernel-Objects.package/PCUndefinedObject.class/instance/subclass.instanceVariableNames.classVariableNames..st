as yet unclassified
subclass: subclassName instanceVariableNames: instVarNames classVariableNames: classVarNames
	^ PCClassBuilder new
		superclass: self;
		name: subclassName;
		instVarNames: instVarNames;
		classVariableNames: classVarNames;
		build