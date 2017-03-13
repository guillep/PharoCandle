
initProcessLists
	"Create process lists for prioriy levels 1 through 5."

	suspendedProcessLists := (1 to: 5)
		collect: [ :i | PCProcessList new ]