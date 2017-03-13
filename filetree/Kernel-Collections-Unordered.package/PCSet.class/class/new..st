
new: nElements
	"Create a Set large enough to hold nElements without growing."

	| initialSize |
	"make large enough size to hold nElements with some slop (see fullCheck)"
	nElements <= 0
		ifTrue: [ initialSize := 1 ]
		ifFalse: [ initialSize := (nElements + 1) * 4 // 3 ].
	^ self basicNew init: initialSize