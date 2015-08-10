starting / stopping
stopCurrentApplication

	SspApplication current ifNotNil: 
		[SspApplication current stop.  
		SspApplication current: nil].
	self stopRunningHttpServers.