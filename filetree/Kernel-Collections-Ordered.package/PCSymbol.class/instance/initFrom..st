as yet unclassified
initFrom: aString
	"Warning! Use only to initialize new Symbols. Symbols are assumed to be immutable there after."

	self size = aString size
		ifFalse: [ self error: 'size mismatch' ].
	super
		replaceFrom: 1
		to: self size
		with: aString
		startingAt: 1