as yet unclassified
newForMethod: aMethod
	"This is the only method for creating new contexts, other than by using the clone primitive. Any other attempts, such as inherited methods like shallowCopy, should be avoided or must at least be rewritten to determine the proper size for the method that will use this context. This is because asking a context its size (even basicSize!) will not return the actual object size but only the number of fields currently accessible, as determined by stackp."

	^ super basicNew: aMethod frameSize