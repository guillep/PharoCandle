as yet unclassified
with: firstObject with: secondObject
	"Answer a new instance of me containing the two arguments as elements."

	| newCollection |
	newCollection := self new: 2.
	newCollection at: 1 put: firstObject.
	newCollection at: 2 put: secondObject.
	^ newCollection