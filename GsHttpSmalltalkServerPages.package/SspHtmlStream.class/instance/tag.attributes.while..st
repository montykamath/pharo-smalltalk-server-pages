tags private
tag: aString attributes: tagAttributes while: aBlock

	self openTag: aString attributes: tagAttributes.
	[aBlock isString 
		ifTrue: [self nextPutText: aBlock]
		ifFalse: aBlock] ensure: [self closeTag: aString].