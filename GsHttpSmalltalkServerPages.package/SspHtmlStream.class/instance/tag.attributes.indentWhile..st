tags private
tag: tag attributes: tagAttributes indentWhile: aBlockOrString

	self crTabIn.
	self openTag: tag attributes: tagAttributes.
		[self indentWhile:
			[self crTabIn.
			aBlockOrString isString 
				ifTrue: [self nextPutText: aBlockOrString]
				ifFalse: [aBlockOrString value]]] ensure: 
					[self crTabIn.
					self closeTag: tag].