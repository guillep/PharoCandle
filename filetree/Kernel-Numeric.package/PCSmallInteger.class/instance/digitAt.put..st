as yet unclassified
digitAt: n put: value
	"Fails. The digits of a small integer can not be modified."

	self error: 'You cannot store in a SmallInteger'