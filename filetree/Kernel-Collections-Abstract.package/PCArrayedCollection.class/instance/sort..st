
sort: aBlock
	"Sort this array using the given comparision block. The block should take two arguments and return true if the first element should precede the second in the sorted result."

	self mergeSortFrom: 1 to: self size by: aBlock