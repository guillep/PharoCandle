
select: aBlock
	"Evaluate aBlock with each of my elements as the argument. Collect into a new collection like the receiver, only those elements for which aBlock evaluates to true. Override the superclass in order to use add:, not at:put:."

	| newCollection |
	newCollection := self species new.
	self
		do: [ :each | 
			(aBlock value: each)
				ifTrue: [ newCollection add: each ] ].
	^ newCollection