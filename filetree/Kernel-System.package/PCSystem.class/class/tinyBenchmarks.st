
tinyBenchmarks
	"Report the results of running the two tiny benchmarks."

	| n t1 t2 r |
	n := 25.
	t1 := [ n benchmark ] msecs.
	t2 := [ r := 28 benchFib ] msecs.
	^ (n * 500000 * 1000 // t1) printString , ' bytecodes/sec; '
		, (r * 1000 // t2) printString , ' sends/sec'