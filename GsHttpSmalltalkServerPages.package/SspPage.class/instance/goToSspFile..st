navigaton and pg rendering
goToSspFile: url
	"You can call this method to navigate to any ssp page (even if it doesn't have a corresponding class.
	For example:
		self goToSspFile: myPage.ssp"
		

	^self request method = #GET
		ifTrue: 
			[| cls inst |
			cls := SspApplication current urlsHandled at: url ifAbsent: [^nil].
			inst := cls new.
			inst filename: url.
			inst initFromPage: self.
			inst handleRequest]
		ifFalse: 
			[| urlWithSlash |
			urlWithSlash := 
				(url notEmpty and:[url first ~= $/]) 
					ifTrue: ['/', url]
					ifFalse: [url].
			self response: (ZnResponse redirect: urlWithSlash).
			self response]