
arcTan
	"Answer the angle in radians.
	 Optional. See Object documentation whatIsAPrimitive."

	<primitive: 57>
	| theta eps step sinTheta cosTheta |
	self < 0.0
		ifTrue: [ ^ 0.0 - (0.0 - self) arcTan ].	"Newton-Raphson"	"first guess"
	theta := self * Halfpi / (self + 1.0).	"iterate"
	eps := Halfpi * Epsilon.
	step := theta.
	[ step * step > eps ]
		whileTrue: [ sinTheta := theta sin.
			cosTheta := theta cos.
			step := sinTheta * cosTheta - (self * cosTheta * cosTheta).
			theta := theta - step ].
	^ theta