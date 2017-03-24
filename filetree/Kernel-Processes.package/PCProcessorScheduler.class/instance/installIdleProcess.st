as yet unclassified
installIdleProcess
	"Install an idle process of the lowest possible priority that is always runnable."

	"Details: The virtual machine requires that there is always some runnable process that can be scheduled; this background process ensures that this is the case."

	| idleList idleProc |
	"terminate any old idle processes"
	idleList := suspendedProcessLists at: 1.
	[ idleList isEmpty ] whileFalse: [ idleList first terminate ].
	idleProc := PCProcess for: [ self idleProcess ] priority: 1.
	(suspendedProcessLists at: idleProc priority) addLast: idleProc