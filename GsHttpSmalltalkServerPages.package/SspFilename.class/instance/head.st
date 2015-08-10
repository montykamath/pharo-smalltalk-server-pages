accessing
head
	"Answer the directory prefix as a String."

	| index |
	(index := self lastSeparatorIndex) notNil
		ifTrue:	[index := index max: 2.
				^self asString copyFrom: 1 to: index-1]
		ifFalse:	[^FileSystem workingDirectory]