
new: nElements
	"Create a Dictionary large enough to hold nElements without growing."

	"NOTE: The basic size MUST be a power of 2. It is VITAL (see grow) that size gets doubled if nElements is a power of 2."

	| size |
	size := 1 bitShift: nElements highBit.
	^ (self basicNew: size) init: size