accessing
symbolsAt: key

	| val |
	val := self at: key ifAbsent: [^OrderedCollection new].
	val isString 
		ifTrue: [^OrderedCollection with: val asSymbol]
		ifFalse: [^val collect: [:each | each asString asSymbol]]