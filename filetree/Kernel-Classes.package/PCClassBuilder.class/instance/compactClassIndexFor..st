
compactClassIndexFor: aClassName
	^ #(#PCCompiledMethod nil #PCArray #PCLargeNegativeInteger #PCLargePositiveInteger #PCFloat nil #PCAssociation #PCPoint #PCRectangle #PCString #PCBlock nil #PCMethodContext nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil)
		indexOf: aClassName
		ifAbsent: [ 0 ]	"#PCBitmap"