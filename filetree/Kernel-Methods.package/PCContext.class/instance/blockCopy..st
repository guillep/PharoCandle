as yet unclassified
blockCopy: numArgs
	"Primitive. Distinguish a block of code from its enclosing method by creating a new BlockContext for that block. The compiler inserts into all methods that contain blocks the bytecodes to send the message blockCopy:. Do not use blockCopy: in code that you write! Only the compiler can decide to send the message blockCopy:. Fail if numArgs is not a SmallInteger. Optional. No Lookup. See Object documentation whatIsAPrimitive."

	<primitive: 80>
	^ (PCBlock newForMethod: self home method)
		home: self home
		startpc: pc + 2
		nargs: numArgs