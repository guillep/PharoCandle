as yet unclassified
asByteArray
	"Answer a ByteArray containing my elements."

	| result i |
	result := PCByteArray new: self size.
	i := 0.
	self do: [ :each | result at: (i := i + 1) put: each ].
	^ result