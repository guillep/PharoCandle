as yet unclassified
keyAt: index
	"May be overridden by subclasses so that fixCollisions will work"

	| assn |
	assn := array at: index.
	assn == nil
		ifTrue: [ ^ nil ]
		ifFalse: [ ^ assn key ]