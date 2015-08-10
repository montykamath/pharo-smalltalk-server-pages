printing
printOn: stream

	stream 
		nextPutAll: 'aSspFilename (';
		nextPutAll: self asString;
		nextPutAll: ')'
