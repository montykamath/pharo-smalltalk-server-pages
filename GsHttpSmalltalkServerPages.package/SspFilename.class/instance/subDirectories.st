accessing
subDirectories

	^self directoryContents select: [ :e | e isDirectory ]