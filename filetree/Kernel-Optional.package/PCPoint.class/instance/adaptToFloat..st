
adaptToFloat: rcvr
	"If I am involved in arithmetic with a Float, convert it to a Point."

	^ rcvr @ rcvr perform: selector with: self