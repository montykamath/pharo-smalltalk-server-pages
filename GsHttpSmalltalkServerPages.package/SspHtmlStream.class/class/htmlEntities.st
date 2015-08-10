accessing
htmlEntities
	
	HtmlEntities isNil ifTrue: [self initializeHtmlEntities].
	^ HtmlEntities 