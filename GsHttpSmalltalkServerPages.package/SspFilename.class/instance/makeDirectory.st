services
makeDirectory
	
	self directory exists 
		ifFalse: [ self directory makeDirectory].
	
	self exists 
		ifFalse: [ self asFileReference createDirectory ].