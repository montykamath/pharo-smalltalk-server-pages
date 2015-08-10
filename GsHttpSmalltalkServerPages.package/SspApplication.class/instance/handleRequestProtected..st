running
handleRequestProtected: request

	| url cls inst redirect |
	"Get the url without the leading slash"

	url := request url path.
	(url notEmpty and: [url first = $/])
		ifTrue: [url := url copyFrom: 2 to: url size].
		
	redirect := self redirectedUrlFor: url.
	redirect ifNotNil: [^ZnResponse redirect: redirect].

	cls := self urlsHandled at: url ifAbsent: [nil].
	cls ifNil: [^fileServerDelegate handleRequest: request].

	((cls = SspDoLittlePg) 
		and: [#('.ssp' '.shtml') noneSatisfy: [:e | url includesSubstring: e]]) 
			ifTrue: [^ZnResponse notFound: url].
	
	inst := cls new.
	inst filename: url.
	^inst handleRequestExternal: request.