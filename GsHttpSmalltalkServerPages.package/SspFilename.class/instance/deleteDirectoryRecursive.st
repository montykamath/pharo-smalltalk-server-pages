services
deleteDirectoryRecursive

	self exists 
		ifFalse: [ ^self ].
	self isDirectory 
		ifFalse: [ self error: 'Must be a directory to use #deleteDirectoryRecursive' ].
		
	self directoryContents
		do: [ :e | 
			e isDirectory
				ifTrue: [ e deleteDirectoryRecursive ]
				ifFalse: [ e delete ] ].
	self delete