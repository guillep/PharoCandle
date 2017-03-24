as yet unclassified
ifError: errorHandlerBlock
	"Evaluate the block represented by the receiver. If an error occurs the given handler block is evaluated. The handler block can be either a zero- or two-argument block; if the latter, then the error message and receiver are supplied to it as parameters. Answer the value returned by the handler block if the receiver gets an error."

	"Warning: The receiver should not contain an explicit return since that would leave an obsolete error handler hanging around."

	"Examples:
		[1 whatsUpDoc] ifError: [:err :rcvr | ^ 'huh?'].
		[1 whatsUpDoc] ifError: ['huh'].
		[1 / 0] ifError: [:err :rcvr |
			'division by 0' = err
				ifTrue: [^ Float infinity]
				ifFalse: [self error: err]]
"

	| activeProcess lastHandler val |
	activeProcess := Processor activeProcess.
	lastHandler := activeProcess errorHandler.
	activeProcess
		errorHandler: [ :aString :aReceiver | 
			activeProcess errorHandler: lastHandler.
			errorHandlerBlock numArgs = 0
				ifTrue: [ ^ errorHandlerBlock value ].
			^ errorHandlerBlock value: aString value: aReceiver ].
	val := self value.
	activeProcess errorHandler: lastHandler.
	^ val