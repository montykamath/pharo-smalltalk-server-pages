services
contentsOfEntireFile
	| stream |
	[stream := FileStream readOnlyFileNamed: self asString.
	^stream contentsOfEntireFile]
		ensure: [stream close]
