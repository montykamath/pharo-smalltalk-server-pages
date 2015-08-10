accessing
numbersAt: key

	| val |
	val := self at: key ifAbsent: [^OrderedCollection new].
	val isNumber
		ifTrue: [^OrderedCollection with: val]
		ifFalse: [^val collect: [:each | each asNumber]]