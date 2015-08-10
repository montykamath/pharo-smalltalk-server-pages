accessing
asRelativeString
	"Answer a Filename pointing to the same file using absolute path.
	The method may answer the receiver it it is already absolute."
	"'foo' asSspFilename asRelativeString"

	^self asRelativeStringTo: (SspFilename default asString)