
beBytes
	self isCompiledMethodClassIndex
		ifTrue: [ ^ self beCompiledMethod ].
	^ formats := #(variable bytes)