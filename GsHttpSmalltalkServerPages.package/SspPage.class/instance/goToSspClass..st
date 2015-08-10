navigaton and pg rendering
goToSspClass: aClass
	"You can call this method to navigate to the ssp page of a given class.
	For example assuming MyPage was a SspComponent subclass:
		self goToSspClass: MyPage"

	^self request method = #GET
		ifTrue: 
			[aClass new
				initFromPage: self;
				handleRequest]
		ifFalse: 
			[| url |
			url := '/', aClass filename.
			self response: (ZnResponse redirect: url).
			self response]