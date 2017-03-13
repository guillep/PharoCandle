
asByteArray
	"Answer a ByteArray containing the ASCII values of my characters. Uses a fast primitive that avoids character conversion."

	^ (PCByteArray new: self size)
		replaceFrom: 1
		to: self size
		with: self