as yet unclassified
initFrom: aPharoClass methodDict: newMethodDict
	"Fill in my instance variables from the given Class using the given MethodDictionary."

	superclass := PCObject.	"corrected later"
	methodDict := newMethodDict.
	format := aPharoClass format.
	name := (aPharoClass name copyFrom: 2 to: aPharoClass name size)
		asSymbol.	"omit leading M"
	instVarNames := aPharoClass instVarNames.
	classVariables := aPharoClass classPool.
	instVarNames size = 0
		ifTrue: [ instVarNames := nil ].
	classVariables size = 0
		ifTrue: [ classVariables := nil ]