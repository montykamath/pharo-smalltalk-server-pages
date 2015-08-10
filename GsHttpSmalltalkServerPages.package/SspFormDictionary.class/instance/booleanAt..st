accessing
booleanAt: key

	| yesVals |
	yesVals := #('1' 'yes' 'true' 'y' 'on').

	^yesVals includes: (self stringAt: key ifAbsent: ['false']) asLowercase