as yet unclassified
sort
	"Sort this array into ascending order using the '<' operator."

	self mergeSortFrom: 1 to: self size by: [ :el1 :el2 | el1 < el2 ]