as yet unclassified
ifTrue: trueBlock
	"If the receiver is true, answer the result of evaluating the given block. Otherwise, answer nil. Raise an error notification if the true is not a boolean. Execution does not actually reach here because the expression is compiled in-line."

	^ trueBlock value