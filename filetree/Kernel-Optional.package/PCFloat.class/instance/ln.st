as yet unclassified
ln
	"Answer the natural logarithm of the receiver.
	 Optional. See Object documentation whatIsAPrimitive."

	<primitive: 58>
	| expt n mant x div pow delta sum eps |
	self <= 0.0
		ifTrue: [ self error: 'ln is only defined for x > 0.0' ].	"Taylor series"	"get a rough estimate from binary exponent"
	expt := self exponent.
	n := Ln2 * expt.
	mant := self timesTwoPower: 0 - expt.	"compute fine correction from mantinssa in Taylor series"	"mant is in the range [0..2]"	"we unroll the loop to avoid use of abs"
	x := mant - 1.0.
	div := 1.0.
	pow := delta := sum := x.
	x := x negated.	"x <= 0"
	eps := Epsilon * (n abs + 1.0).
	[ delta > eps ]
		whileTrue: [ div := div + 1.0.
			pow := pow * x.
			delta := pow / div.
			sum := sum + delta.	"pass two: delta is negative"
			div := div + 1.0.
			pow := pow * x.
			delta := pow / div.
			sum := sum + delta ].
	"pass one: delta is positive"
	^ n + sum	"2.718284 ln 1.0"