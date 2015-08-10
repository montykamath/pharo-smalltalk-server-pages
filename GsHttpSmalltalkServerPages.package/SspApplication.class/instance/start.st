starting stopping
start
	
	self refreshCachedPages.
	
	fileServerDelegate := self createFileServerDelegate.
	httpService := self createServer.
	httpService start.
