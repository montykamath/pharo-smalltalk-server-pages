accessing
files

	^self directoryContents select: [ :e | e isDirectory not ]