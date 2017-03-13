
replaceFrom: start
	| j |
	"Catches failure if LgInt replace primitive fails"
	j := repStart.
	start to: stop do: [ :i | 
		self digitAt: i put: (replacement digitAt: j).
		j := j + 1 ]