
isCompiledMethodClassIndex
	^ (self compactClassIndexFor: name)
		== (self compactClassIndexFor: #PCCompiledMethod)