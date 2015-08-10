starting stopping
stop

	fileServerDelegate ifNotNil: [ fileServerDelegate := nil ].

	self httpService ifNotNil: 
		[self httpService unregister.
		self httpService stop.
		self httpService: nil]