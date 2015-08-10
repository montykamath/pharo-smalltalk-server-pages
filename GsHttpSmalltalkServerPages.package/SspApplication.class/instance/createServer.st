starting stopping
createServer

	^(ZnManagingMultiThreadedServer on: self portNumber)
		debugMode: self isDebugMode;
		logServerErrorDetails: true;
		delegate: self;
		yourself