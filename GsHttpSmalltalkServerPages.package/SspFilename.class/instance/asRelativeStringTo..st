accessing
asRelativeStringTo: aSspFilename
	"Answer a Filename pointing to the same file using absolute path.
	The method may answer the receiver it it is already absolute."
	"'foo' asSspFilename asRelativeString"

	^self asString readStream 
		upToAll: (aSspFilename asString); 
		upToEnd