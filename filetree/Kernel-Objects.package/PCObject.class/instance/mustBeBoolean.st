as yet unclassified
mustBeBoolean
	"Error: attempt to use a non-Boolean object as if it were true or false. This message is sent by the virtual machine."

	self error: 'NonBoolean receiver.'.
	^ true