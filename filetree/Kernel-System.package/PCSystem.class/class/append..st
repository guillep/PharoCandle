
append: aString
	"Append the given string to the file with the given name."

	| f |
	f := PCFile new.
	f openReadWrite: f localFolderPath , fileName.
	f position: f size.
	f nextPutAll: aString.
	f cr.
	f close