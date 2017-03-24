as yet unclassified
isCompiledMethodClassIndex
	^ (self compactClassIndexFor: name)
		== (self compactClassIndexFor: #PCCompiledMethod)