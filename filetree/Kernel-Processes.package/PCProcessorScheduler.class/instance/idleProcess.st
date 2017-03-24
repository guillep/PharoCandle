as yet unclassified
idleProcess
	"A default background process that simply loops forever. It runs only when no higher priority processes are available, perhaps because they are waiting on a semaphore or timer."

	[ true ] whileTrue: [  ]
	"do nothing"