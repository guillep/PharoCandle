as yet unclassified
installStartProcess
	"Install the startup process as the active process. This process will run when Pharo Candle is started."

	activeProcess := PCProcess
		for: [ PCSystem start ] asContext
		priority: 3