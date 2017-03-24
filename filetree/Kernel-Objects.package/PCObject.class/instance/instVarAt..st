as yet unclassified
instVarAt: index
	"Primitive. Answer a fixed variable in an object. The numbering of the 
	variables corresponds to the named instance variables. Fail if the index 
	is not an Integer or is not the index of a fixed variable. Essential. See 
	Object documentation whatIsAPrimitive."

	"Access beyond fixed variables."

	<primitive: 73>
	^ self basicAt: index - self class instSize