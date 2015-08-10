accessing
cachedPageContents

	"Force to read file everytime in debug mode"
	SspApplication current isDebugMode 
		ifTrue: [self refreshCachedPage].

	cachedPageContents ifNil: 
		[ | fn |
		fn := SspApplication current sspDirectory, self filename.
		cachedPageContents := (
			fn exists 
				ifTrue: [fn contentsOfEntireFile]
				ifFalse: [self exampleFileContents])].
	^cachedPageContents
	
	