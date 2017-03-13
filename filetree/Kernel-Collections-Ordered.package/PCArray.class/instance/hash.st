
hash
	"Make sure that equal (=) arrays hash equally."

	self size = 0
		ifTrue: [ ^ 17171 ].
	^ (self at: 1) hash + (self at: self size) hash