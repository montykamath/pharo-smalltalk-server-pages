private
handleRequestExternal: aRequest

	| sess |
	self request: aRequest.
	self setFieldsFrom: aRequest.
	self session: aRequest session.
	sess := 
		(SspApplication current isNil or: [SspApplication current sessionClass isNil])
			ifTrue: [aRequest session]
			ifFalse: [aRequest session attributeAt: 'sspSession' ifAbsentPut: [SspApplication current sessionClass new]].
	self session: sess.
	
	self handleRequest.
	
	self response ifNil: 
		[self response: (
			ZnResponse ok: (
				ZnStringEntity html: self outputStream contents))].
	
	"forece the page to refresh if they need it again"
	self preventBrowserPageCaching ifTrue:
		[self response headers 
			at: 'Expires' 
			put: (ZnUtils httpDate: (DateAndTime now asUTC - 3600))].

	^self response