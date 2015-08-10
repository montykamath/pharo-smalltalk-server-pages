overrides
filesToImport
	"override to provide a list of SspFilenames.
	These are the ssp files that you have on disk.
	This lets you save them in the image so you can version them with your code"

	^self sspDirectory directoryContents select: 
		[:fn |
		('*.ssp' match: fn tail) ]