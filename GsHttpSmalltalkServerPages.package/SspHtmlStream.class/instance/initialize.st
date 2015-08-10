initialize-release
initialize

	super initialize.
	self stream: (String new: 30) writeStream.
	self level: 0.