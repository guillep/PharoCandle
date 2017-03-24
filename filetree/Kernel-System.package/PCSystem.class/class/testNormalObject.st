as yet unclassified
testNormalObject
	| test |
	test := (PCObject
		subclass: #Test
		instanceVariableNames: 'test1 test2'
		classVariableNames: '') new.
	test instVarAt: 1 put: 1.
	test instVarAt: 2 put: (test instVarAt: 1) + 2.
	self log: (test instVarAt: 2) asString