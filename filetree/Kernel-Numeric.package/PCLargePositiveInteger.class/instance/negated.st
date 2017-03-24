as yet unclassified
negated
	^ (self copyto: (PCLargeNegativeInteger new: self digitLength))
		normalize	"Need to normalize to catch SmallInteger minVal"