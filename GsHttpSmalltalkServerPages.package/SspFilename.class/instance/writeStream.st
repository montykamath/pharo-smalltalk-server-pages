services
writeStream
	"I create a write stream on the file I represent."

	self deleteQuietly.
	^self asFileReference writeStream