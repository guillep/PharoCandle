
localFolderPath
	"Answer the path for the folder containing the image file."

	"MFile new localFolderPath"

	| imagePath delimiter i |
	imagePath := self primImageName.
	delimiter := $/.
	(imagePath includes: delimiter)
		ifFalse: [ delimiter := $\ ].
	i := imagePath size.
	[ i > 0 and: [ (imagePath at: i) ~= delimiter ] ]
		whileTrue: [ i := i - 1 ].
	i = 0
		ifTrue: [ ^ '' ].
	^ imagePath copyFrom: 1 to: i