
copy
	"Answer a copy of me. Subclasses should usually override this method to change copying behavior, not basicCopy. The exception is classes with unique instances, such as Symbol. This operation does not generally copy all the objects that I refer to.."

	^ self basicCopy