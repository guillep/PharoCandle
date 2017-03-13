
contents
	"Answer with a copy of my collection up to the high-water mark that was written."

	readLimit := readLimit max: position.
	^ collection copyFrom: 1 to: readLimit