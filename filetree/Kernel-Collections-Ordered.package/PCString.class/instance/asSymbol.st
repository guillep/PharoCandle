as yet unclassified
asSymbol
	"This is the only place that new Symbols are created. A Symbol is created if and only if there is not already a Symbol with its contents in existance."

	PCSymbol
		allInstancesDo: [ :sym | 
			self = sym
				ifTrue: [ ^ sym ] ].
	^ (PCSymbol basicNew: self size) initFrom: self