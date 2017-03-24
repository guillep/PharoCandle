as yet unclassified
printOn: aStream
	aStream nextPut: $(.
	start printOn: aStream.
	aStream nextPutAll: ' to: '.
	stop printOn: aStream.
	step ~= 1
		ifTrue: [ aStream nextPutAll: ' by: '.
			step printOn: aStream ].
	aStream nextPut: $)