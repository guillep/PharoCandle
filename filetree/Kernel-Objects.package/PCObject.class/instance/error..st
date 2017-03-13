
error: aString
	"The default behavior for error: is the same as halt:. The code is replicated in order to avoid having an extra message send on the stack. This additional message is the one a subclass should override in order to change the error handling behavior."

	"PCPbject new error: 'test error'"

	| handler |
	(handler := Processor activeProcess errorHandler)
		ifNil: [ self handleExceptionName: aString context: thisContext ]
		ifNotNil: [ handler value: aString value: self ]