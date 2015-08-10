overrides
continueUrl
	"This is used by SspNavigationPage when you call warn: or inform:.
	Override if you want to provide some other url where the continue button should take you after you do warn: or inform:.
	This is how you can provide a totally different url or a url with fields like:
		/myPage.ssp?foo=faa&fee=fum"

	^'/', self class filename