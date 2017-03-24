as yet unclassified
size
	"Answer how many elements the receiver contains."

	| count |
	count := 0.
	self do: [ :each | count := count + 1 ].
	^ count