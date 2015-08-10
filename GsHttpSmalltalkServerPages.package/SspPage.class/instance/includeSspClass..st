navigaton and pg rendering
includeSspClass: aClass
	"You can call this method from within your ssp pages.  
	For example assuming MyHeader was a SspComponent subclass:
		<? self includeSspClass: MyHeader ?>"

	| pg |
	pg := aClass new.
	pg initFromPage: self.
	self parseAndEvaluate: pg pageContents for: pg.
	^''