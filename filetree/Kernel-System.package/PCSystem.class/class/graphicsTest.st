
graphicsTest
	"This method is called when the image is started. Add a call to your own code here."

	"MSystem graphicsTest"

	| f |
	self log: 'Screen size: ' , PCForm new primScreenSize printString.
	f := PCForm new.
	f beDisplayDepth: 32.
	0 to: 255 do: [ :r | 
		0 to: 255 do: [ :gb | 
			f setColorR: r g: gb b: gb.
			f
				fillRectX: gb
				y: 0
				w: 1
				h: f height ] ].
	f setColorR: 255 g: 255 b: 0.
	f
		fillRectX: 0
		y: 0
		w: 30
		h: 30