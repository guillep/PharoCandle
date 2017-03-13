
doesNotUnderstand: aMessage
	"Handle a failed attempt to send the given message to the receiver because the receiver does not implement or inherit a method for the message selector. The 'doesNotUnderstand:' message is sent by the virtual machine when a message send fails. If the receiver has an error handling block, invoke it. Otherwise, report an error."

	"PCObject new argh"

	| errorString handler |
	errorString := 'Message not understood: ' , aMessage selector.
	(handler := Processor activeProcess errorHandler)
		ifNil: [ self handleExceptionName: errorString context: thisContext ]
		ifNotNil: [ handler value: errorString value: self ].
	^ aMessage sentTo: self	"resend the message if the user proceeds from the debugger"