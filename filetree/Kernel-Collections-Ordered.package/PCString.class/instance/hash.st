
hash
	| l m |
	(l := m := self size) <= 2
		ifTrue: [ l = 2
				ifTrue: [ m := 3 ]
				ifFalse: [ l = 1
						ifTrue: [ ^ ((self at: 1) asciiValue bitAnd: 127) * 106 ].
					^ 21845 ] ].
	^ (self at: 1) asciiValue * 48 + ((self at: m - 1) asciiValue + l)