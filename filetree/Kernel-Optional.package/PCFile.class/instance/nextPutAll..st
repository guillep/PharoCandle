
nextPutAll: buffer
	"Write the contents of the given bytes or words object to this file."

	^ self
		primWrite: fileID
		from: buffer
		startingAt: 1
		count: buffer basicSize