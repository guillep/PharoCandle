
printOn: aStream
	"Handle sign, zero, and NaNs; all other values passed to absPrintOn:base:"

	self isNaN
		ifTrue: [ aStream nextPutAll: 'NaN'.
			^ self ].	"check for NaN before sign"
	self > 0.0
		ifTrue: [ self absPrintOn: aStream base: base ]
		ifFalse: [ self sign = -1
				ifTrue: [ aStream nextPutAll: '-' ].
			self = 0.0
				ifTrue: [ aStream nextPutAll: '0.0'.
					^ self ]
				ifFalse: [ self negated absPrintOn: aStream base: base ] ]