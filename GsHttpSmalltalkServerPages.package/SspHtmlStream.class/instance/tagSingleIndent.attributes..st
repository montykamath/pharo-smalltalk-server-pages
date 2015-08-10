tags private
tagSingleIndent: aString attributes: attr

	self crTabIn.
	self
		nextPutAll: '<';
		nextPutAll: aString.
	attr isEmpty 
		ifFalse: 
			[self nextPutAll: ' '.
			self nextPutAll: attr].
	self nextPutAll: '>'.