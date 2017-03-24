as yet unclassified
setWidth: w height: h depth: d
	| wordsPerLine |
	wordsPerLine := (w * d + 31) // 32.
	bits := PCByteArray new: 4 * wordsPerLine * h.
	width := w.
	height := h.
	depth := d.
	bitBlt := PCBitBlt new
		destForm: self;
		fillR: 255 g: 0 b: 0	"default color"