as yet unclassified
perform: aSymbol with: anObject
	"Primitive. Send the receiver the keyword message indicated by the 
	arguments. The first argument is the selector of the message. The other 
	argument is the argument of the message to be sent. Invoke 
	messageNotUnderstood: if the number of arguments expected by the 
	selector is not one. Optional. See Object documentation whatIsAPrimitive."

	<primitive: 83>
	^ self perform: aSymbol withArguments: (PCArray with: anObject)