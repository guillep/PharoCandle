as yet unclassified
max: aPoint
	"Answer a new Point whose x and y are the maximum of the receiver and the argument point x and y."

	^ (x max: aPoint x) @ (y max: aPoint y)