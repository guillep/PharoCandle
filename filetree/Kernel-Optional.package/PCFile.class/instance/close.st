
close
	"Close this file."

	fileID
		ifNotNil: [ self primClose: fileID.
			fileID := nil ]