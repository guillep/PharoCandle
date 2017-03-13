
fillR: r
	"Set my fill color to the given RGB value, where r, g, and b are in the range 0-255. The destination form must be set before calling this method, since the pixel pattern created depends on the destination depth."

	"Note: The ranges of r, g, and b are not checked."

	| d pix |
	d := destForm depth.
	d = 8
		ifTrue: [ pix := 41 + (r // 37 * 36) + (g // 37 * 6) + (b // 37).
			^ self fillWords: (PCWordArray with: 16r01010101 * pix) ].
	d = 16
		ifTrue: [ "5 bits each of r, g, b"
			pix := (r // 8 bitShift: 10) + (g // 8 bitShift: 5) + (b // 8).
			^ self fillWords: (PCWordArray with: (pix bitShift: 16) + pix) ].
	d = 32
		ifTrue: [ ^ self
				fillWords: (PCWordArray with: (r bitShift: 16) + (g bitShift: 8) + b) ].
	self error: 'color is supported only for depths 8, 16, and 32'