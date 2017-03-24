as yet unclassified
truncateTo: aNumber
	"Answer the next multiple of aNumber toward zero that is nearest the 
	receiver."

	^ (self quo: aNumber) * aNumber