accessing
cachedPageContents

	"Force to read file everytime in debug mode"
	SspApplication current isDebugMode 
		ifTrue: [self refreshCachedPage].

	cachedPageContents ifNil: 
		[cachedPageContents := (SspApplication current sspDirectory, self filename) contentsOfEntireFile].
	^cachedPageContents