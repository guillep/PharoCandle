
translate: aString
	"Translate the characters in the given string in place using the given mapping table."

	<primitive: 243>
	start to: stop do: [ :i | aString at: i put: (table at: (aString at: i) asciiValue + 1) ]