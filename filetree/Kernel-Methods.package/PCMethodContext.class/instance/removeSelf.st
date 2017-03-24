as yet unclassified
removeSelf
	"Nil the receiver pointer and answer its former value."

	| result |
	result := receiver.
	receiver := nil.
	^ result