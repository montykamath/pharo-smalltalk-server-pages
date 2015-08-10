services
copyTo: aSspFilename
	"(SspFilename default, 'demoAccountBackups') copyTo: (SspFilename default, 'montyBackupsTry1')"
	
	self isDirectory 
		ifFalse: [ ^self asFileReference copyTo:  aSspFilename asFileReference ].
	
	aSspFilename exists 
		ifFalse: [ aSspFilename makeDirectory ].
	self directoryContents do: [ :e | e copyTo: aSspFilename, e tail ].