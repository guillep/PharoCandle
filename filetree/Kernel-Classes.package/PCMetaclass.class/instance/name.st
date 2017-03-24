as yet unclassified
name
	"Answer my name, either 'Metaclass' or the name of my class followed by ' class'."

	soleInstance
		ifNil: [ ^ 'Metaclass' ]
		ifNotNil: [ ^ soleInstance name , ' class' ]