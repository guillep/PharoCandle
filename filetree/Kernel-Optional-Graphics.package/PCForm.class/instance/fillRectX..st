
fillRectX: x
	"Fill the given rectangle with the current fill color."

	bitBlt
		destX: x
			y: y
			width: w
			height: h;
		copyBits