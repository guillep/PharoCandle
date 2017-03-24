as yet unclassified
start
	self log: 'Welcome to Pharo Candle edition!' substrings asString.
	self log: self tinyBenchmarks.
	self log: PCForm new primScreenSize printString.
	self testNormalObject.
	self testByteObject.
	PCObject superclass ifNil: [ self quit ]