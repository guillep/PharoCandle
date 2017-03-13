
openReadOnly: fileName
	"Open the file with the given name for reading and writing."

	name := nil.
	fileID := self primOpen: fileName writable: false.
	name := fileName