
raisedTo: aNumber
	"Answer the receiver raised to aNumber."

	0.0 = aNumber
		ifTrue: [ ^ 1.0 ].	"special case for 0.0 raisedTo: 0.0"
	^ (self ln * aNumber asFloat) exp