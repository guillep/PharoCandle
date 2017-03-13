
raisedTo: aNumber
	"Answer the receiver raised to aNumber."

	aNumber isInteger
		ifTrue:
			[ "Do the special case of integer power" ^ self raisedToInteger: aNumber ].
	aNumber = 0
		ifTrue: [ ^ 1 ].	"Special case of exponent=0"
	aNumber = 1
		ifTrue: [ ^ self ].	"Special case of exponent=1"
	^ (aNumber * self ln) exp	"Otherwise raise it to the power using logarithms"