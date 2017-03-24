as yet unclassified
position: anInteger
	"Set my read position, but remember the high-water mark that was written."

	readLimit := readLimit max: position.
	super position: anInteger