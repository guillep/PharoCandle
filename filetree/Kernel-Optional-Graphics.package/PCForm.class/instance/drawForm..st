
drawForm: aForm
	"Fill the given rectangle with the current fill color."

	| oldFill |
	oldFill := bitBlt fillWords.
	bitBlt
		sourceForm: aForm;
		destX: x
			y: y
			width: aForm width
			height: aForm height;
		rule: anInteger;
		copyBits.
	bitBlt sourceForm: nil.
	bitBlt fillWords: oldFill