tags private
closeTag: aString

	self
		nextPutAll: '</';
		nextPutAll: aString;
		nextPutAll: '>'.