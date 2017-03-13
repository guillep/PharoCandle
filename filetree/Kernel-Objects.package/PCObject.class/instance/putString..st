
putString: aString
	"Write the given string to the standard output stream."

	aString do: [ :ch | self putAscii: ch asciiValue ]