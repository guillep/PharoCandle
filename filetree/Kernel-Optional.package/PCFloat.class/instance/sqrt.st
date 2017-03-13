
sqrt
	"Answer the square root of the receiver.
	 Optional. See Object documentation whatIsAPrimitive."

	<primitive: 55>
	| exp guess eps delta |
	self <= 0.0
		ifTrue: [ self = 0.0
				ifTrue: [ ^ 0.0 ]
				ifFalse: [ ^ self error: 'sqrt is invalid for x < 0' ] ].	"Newton-Raphson"	"first guess is half the exponent"
	exp := self exponent // 2.
	guess := self timesTwoPower: 0 - exp.	"get eps value"
	eps := guess * Epsilon.
	eps := eps * eps.
	delta := (self - (guess * guess)) / (guess * 2.0).
	[ delta * delta > eps ]
		whileTrue: [ guess := guess + delta.
			delta := (self - (guess * guess)) / (guess * 2.0) ].
	^ guess