accessing
numbersAt: key ifAbsent: aBlock

	| val |
	val := self at: key ifAbsent: [^aBlock value].
	val isNumber
		ifTrue: [^OrderedCollection with: val]
		ifFalse: [^val collect: [:each | each asNumber]]