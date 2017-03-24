as yet unclassified
with: anObject
	"Answer an instance of me containing anObject."

	| newCollection |
	newCollection := self new.
	newCollection add: anObject.
	^ newCollection