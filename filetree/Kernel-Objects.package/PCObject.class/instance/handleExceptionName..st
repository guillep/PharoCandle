
handleExceptionName: aString
	"Handle an error or halt with the given name in the given context."

	"Not yet implemented. For now, just print the error and exit."

	PCObject superclass
		ifNil: [ self
				putString: aString;
				putcr.
			PCSystem exitToDebugger ]
		ifNotNil: [ "exit to the VM debugger" super error: aString ]