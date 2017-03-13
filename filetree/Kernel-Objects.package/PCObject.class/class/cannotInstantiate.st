
cannotInstantiate
	"This message is sent if you try to create new instances of classes with unique instances such as booleans or characters."

	self error: 'You cannot create new instances of ' , self name