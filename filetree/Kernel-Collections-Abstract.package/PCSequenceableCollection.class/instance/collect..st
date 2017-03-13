
collect: aBlock
	"Refer to the comment in Collection|collect:."

	| result |
	result := self species new: self size.
	1 to: self size do: [ :index | result at: index put: (aBlock value: (self at: index)) ].
	^ result