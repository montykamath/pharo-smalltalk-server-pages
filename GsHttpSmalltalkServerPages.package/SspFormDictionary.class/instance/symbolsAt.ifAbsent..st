accessing
symbolsAt: key ifAbsent: aBlock

	| val |
	val := self at: key ifAbsent: [^aBlock value].
	val isString 
		ifTrue: [^OrderedCollection with: val asSymbol]
		ifFalse: [^val collect: [:each | each asString asSymbol]]