
beDisplayDepth: d
	"Install myself as the Display. Drawing onto me will then cause the screen or window to be updated."

	| screenExtent |
	screenExtent := self primScreenSize.
	self
		setWidth: (screenExtent instVarAt: 1)
		height: (screenExtent instVarAt: 2)
		depth: d.
	PCSystem specialObjectsArray at: 15 put: self	"make this Form the Display"