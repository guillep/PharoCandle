as yet unclassified
suspend
	"Primitive. Stop this process in such a way that it can be restarted later (see resume). If the receiver is the active process, suspend it. Otherwise, remove the receiver from its suspended process list. Essential. See Object documentation whatIsAPrimitive."

	<primitive: 88>
	Processor activeProcess == self
		ifTrue: [ self primitiveFailed ]
		ifFalse: [ Processor
				remove: self
				ifAbsent: [ self error: 'This process was not active' ].
			myList := nil ]