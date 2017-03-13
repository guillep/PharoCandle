
instSize
	"Answer the number of named instance variables of the receiver. Objects can have up to 255 instance variables."

	^ ((format bitShift: -10) bitAnd: 16rC0)
		+ ((format bitShift: -1) bitAnd: 16r3F) - 1