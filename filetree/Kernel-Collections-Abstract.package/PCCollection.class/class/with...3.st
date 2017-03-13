
with: firstObject
	"Answer an instance of me containing the three arguments as elements."

	| newCollection |
	newCollection := self new.
	newCollection add: firstObject.
	newCollection add: secondObject.
	newCollection add: thirdObject.
	^ newCollection