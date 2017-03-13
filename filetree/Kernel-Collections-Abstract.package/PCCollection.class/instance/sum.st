
sum
	"Answer the sum of the elements of this collection. If the collection is empty, answer zero."

	"Details: Use an arbitrary element of the collection as the initial value so this method will work for collections of any kind of object that understands + and -."

	| total seed |
	total := seed := self detect: [ :x | true ] ifNone: [ ^ 0 ].
	self do: [ :el | total := total + el ].
	^ total - seed	"subtract the seed value from the total"