tags
nextPutText: aString

	aString ifNotNil: [self nextPutAll: (self convertToHtml: aString)]