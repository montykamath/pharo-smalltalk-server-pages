accessing
construct: aString
	"Make a new instance, treating the receiver as a directory, and
	the string argument as a file within the pathname."

	^self class named: (self asString, self separator asString, aString)