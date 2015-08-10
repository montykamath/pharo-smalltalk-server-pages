accessing
stringsAt: key

	| val |
	val := self at: key ifAbsent: [^OrderedCollection new].
	val isString 
		ifTrue: [^OrderedCollection with: val]
		ifFalse: [^val collect: [:each | each asString]]