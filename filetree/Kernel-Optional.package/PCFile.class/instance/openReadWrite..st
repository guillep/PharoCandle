as yet unclassified
openReadWrite: fileName
	"Open the file with the given name for reading only."

	name := nil.
	fileID := self primOpen: fileName writable: true.
	name := fileName