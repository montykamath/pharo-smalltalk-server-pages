tags private
openTag: aString attributes: attr

	self
		nextPutAll: '<';
		nextPutAll: aString.
	attr isEmpty 
		ifFalse: 
			[self nextPutAll: ' '.
			self nextPutAll: attr].
	self nextPutAll: '>'.