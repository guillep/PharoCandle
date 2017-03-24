as yet unclassified
new: anInteger
	"If a subclass adds fields, then that subclass must reimplement new:."

	^ self basicNew setCollection: (PCArray new: anInteger)