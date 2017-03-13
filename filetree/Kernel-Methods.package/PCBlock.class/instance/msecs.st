
msecs
	"Answer the number of milliseconds it took to evaluate this block."

	| startMSecs |
	startMSecs := PCSystem milliseconds.
	self value.
	^ PCSystem milliseconds - startMSecs