as yet unclassified
fillRectX: x y: y w: w h: h
	"Fill the given rectangle with the current fill color."

	bitBlt
		destX: x
			y: y
			width: w
			height: h;
		copyBits