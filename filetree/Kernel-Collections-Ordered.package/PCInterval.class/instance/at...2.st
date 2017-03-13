
at: anInteger
	"Storing into an Interval is not allowed."

	self error: 'you can not store into an interval'e: [ ^ start + (step * (anInteger - 1)) ]
		ifFalse: [ self errorSubscriptBounds: anInteger ]