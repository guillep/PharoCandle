as yet unclassified
for: aContext priority: anInteger
	"Answer an instance of me for the given context (usually a Block) at the given priority."

	^ self new
		initSuspendedContext: aContext;
		priority: anInteger