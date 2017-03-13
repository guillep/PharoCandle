
mergeSortFrom: first
	"Private! Split the range to be sorted in half, sort each half, and merge the two half-ranges into dst."

	| middle |
	first = last
		ifTrue: [ ^ self ].
	middle := (first + last) // 2.
	self
		mergeSortFrom: first
		to: middle
		src: dst
		dst: src
		by: aBlock.
	self
		mergeSortFrom: middle + 1
		to: last
		src: dst
		dst: src
		by: aBlock.
	src
		mergeFirst: first
		middle: middle
		last: last
		into: dst
		by: aBlockand forth between the receiver and this copy. The recursion is set up so that the final merge is performed into the receiver, resulting in the receiver being completely sorted."

	| temp |
	self size <= 1
		ifTrue: [ ^ self ].	"nothing to do"
	startIndex = stopIndex
		ifTrue: [ ^ self ].
	(startIndex >= 1 and: [ startIndex < stopIndex ])
		ifFalse: [ self error: 'bad start index' ].
	stopIndex <= self size
		ifFalse: [ self error: 'bad stop index' ].
	temp := self basicCopy.
	self
		mergeSortFrom: startIndex
		to: stopIndex
		src: temp
		dst: self
		by: aBlock