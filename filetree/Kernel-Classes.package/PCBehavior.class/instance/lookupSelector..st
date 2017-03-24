as yet unclassified
lookupSelector: selector
	"Look up the given selector in the methodDictionaries of every class in my superclass chain and answer the corresponding method if found. Answer nil if no method is found."

	| lookupClass mDict |
	lookupClass := self.
	[ lookupClass == nil ]
		whileFalse: [ mDict := lookupClass methodDict.
			(mDict includesKey: selector)
				ifTrue: [ ^ mDict at: selector ].
			lookupClass := lookupClass superclass ].
	^ nil