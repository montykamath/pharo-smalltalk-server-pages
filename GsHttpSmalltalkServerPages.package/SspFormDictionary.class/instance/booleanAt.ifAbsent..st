accessing
booleanAt: key ifAbsent: aBlock

	| yesVals |
	yesVals := #('1' 'yes' 'true' 'y' 'on').

	^yesVals includes: (self stringAt: key ifAbsent: [^aBlock value]) asLowercase