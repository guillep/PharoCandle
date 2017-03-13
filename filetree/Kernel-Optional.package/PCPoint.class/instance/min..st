
min: aPoint
	"Answer a new Point whose x and y are the minimum of the receiver's and the argument point's x and y."

	^ (x min: aPoint x) @ (y min: aPoint y)