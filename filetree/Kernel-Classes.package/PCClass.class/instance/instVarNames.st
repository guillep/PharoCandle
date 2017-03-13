
instVarNames
	"Answer an Array of the receiver's instance variable names."

	instVarNames ifNil: [ ^ #() ].
	^ instVarNames