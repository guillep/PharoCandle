
asDictionary
	| dictionary |
	dictionary := PCDictionary new.
	self do: [ :each | dictionary add: each ].
	^ dictionary