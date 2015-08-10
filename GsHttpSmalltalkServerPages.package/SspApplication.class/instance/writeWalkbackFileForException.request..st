running
writeWalkbackFileForException: anException request: aRequest
	"[self new error: 'foo'] on: Error do: [:err | self new writeWalkbackFileForException: err request: nil]"

	| str fields |
	[ fields := SspPage new setFieldsFrom: aRequest; fields ] 
		on:Error 
		do:[:er | fields := 'error getting fields'. ].

	[str := ('walkback-', Time totalSeconds asString ,'.log') asSspFilename writeStream.
	[str 
		nextPutAll: TimeStamp now printString;
		cr; cr;
		nextPutAll: anException description asString;
		cr; cr.
	anException signalerContext errorReportOn: str.
	str 
		cr; cr; 
		print: aRequest;
		cr; cr;
		print: fields;
		cr; cr;
		print: aRequest entity;
		cr; cr;
		print: aRequest headers] ensure: [str close]]
			on: Error do: [:err | "ignore"].