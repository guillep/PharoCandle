as yet unclassified
beBytes
	self isCompiledMethodClassIndex
		ifTrue: [ ^ self beCompiledMethod ].
	^ formats := #(#variable #bytes)