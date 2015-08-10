private
parseAndEvaluate: aString for: anObject
	"Write out the page and replace parts like <? Date today ?> with the printString after evaluating"

	| inputStream |
	inputStream := aString readStream.
	[inputStream atEnd] whileFalse: 
		[outputStream nextPutAll: (inputStream upToAll: '<?').
		inputStream atEnd ifFalse: 
			[| chunkToEval result |
			chunkToEval := inputStream upToAll: '?>'.
			result := Compiler new evaluate: chunkToEval in: nil to: anObject.
			result ifNotNil: 
				[outputStream nextPutAll: result asString]]]