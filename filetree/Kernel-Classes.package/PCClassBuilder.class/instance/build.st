as yet unclassified
build
	| metaclass theClass supermetaclass |
	supermetaclass := superclass
		ifNil: [ PCClass ]
		ifNotNil: [ superclass class ].
	metaclass := PCMetaclass new.
	metaclass superclass: supermetaclass.
	metaclass setFormat: supermetaclass format.
	theClass := metaclass basicNew initialize.
	theClass superclass: superclass.
	theClass setFormat: self newClassFormat.
	theClass instVarNames: instVarNames asArray.
	theClass name: name.
	theClass classVariables: PCDictionary new.
	self classVariableNames
		do: [ :varName | theClass classVariables at: varName put: nil ].
	metaclass soleInstance: theClass.
	^ theClass