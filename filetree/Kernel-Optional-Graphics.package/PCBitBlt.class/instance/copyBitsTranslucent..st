
copyBitsTranslucent: factor
	"This entry point to BitBlt supplies an extra argument to specify translucency for operations 30 and 31.  The argument must be an integer between 0 and 255."

	<primitive: 96>
	self primitiveFailed