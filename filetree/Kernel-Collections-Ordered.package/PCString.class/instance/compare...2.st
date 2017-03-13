
compare: string1
	"Return 1, 2 or 3, if string1 is <, =, or > string2, with the collating order of characters given by the order array."

	<primitive: 235>
	| len1 len2 c1 c2 |
	len1 := string1 size.
	len2 := string2 size.
	1 to: (len1 min: len2) do: [ :i | 
		c1 := order at: (string1 basicAt: i) + 1.
		c2 := order at: (string2 basicAt: i) + 1.
		c1 = c2
			ifFalse: [ c1 < c2
					ifTrue: [ ^ 1 ]
					ifFalse: [ ^ 3 ] ] ].
	len1 = len2
		ifTrue: [ ^ 2 ].
	len1 < len2
		ifTrue: [ ^ 1 ]
		ifFalse: [ ^ 3 ]