as yet unclassified
initMethodDict: newMethodDict
	"Initialize myself with the given method dictionary. Create but do not initialize my soleInstance."

	superclass := PCClass.
	methodDict := newMethodDict.
	format := PCClass format.	"all metaclasses have the same format as PClass"
	soleInstance := self basicNew