accessing
tail
	"Answer the filename suffix as a String."

	| index nm |
	nm := self asString.
	(index := self lastSeparatorIndex) notNil
		ifTrue:	[^nm copyFrom: index+1 to: nm size]
		ifFalse:	[^nm copy]