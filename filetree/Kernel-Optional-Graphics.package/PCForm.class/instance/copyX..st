
copyX: x
	"Answer a new form containing given rectangular portion of this form."

	| result |
	result := PCForm basicNew setWidth: w height: h depth: depth.
	PCBitBlt new
		sourceForm: self;
		destForm: result;
		sourceX: x y: y;
		width: w height: h;
		copyBits.
	^ result