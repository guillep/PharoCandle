as yet unclassified
remove: aProcess ifAbsent: aBlock
	"Remove the given process from the list on which it is waiting. If the process is not on the queue for it's priority, evaluate the given block. Always answer the process."

	(suspendedProcessLists at: aProcess priority)
		remove: aProcess
		ifAbsent: aBlock.
	^ aProcess