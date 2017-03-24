as yet unclassified
selectorAtMethod: method setClass: classResultBlock
	"Answer the message selector associated with the compiled method and evaluate the classResultBlock on the class in which that selector is defined."

	"Note: This method is here only to support the debugger."

	| sel |
	sel := self methodDict
		keyAtIdentityValue: method
		ifAbsent: [ superclass
				ifNil: [ classResultBlock value: self.
					^ #DoIt ].
			sel := superclass
				selectorAtMethod: method
				setClass: classResultBlock.
			sel == #DoIt
				ifTrue: [ classResultBlock value: self ].	"if selector is DoIt, set class to me"
			^ sel ].
	classResultBlock value: self.
	^ sel