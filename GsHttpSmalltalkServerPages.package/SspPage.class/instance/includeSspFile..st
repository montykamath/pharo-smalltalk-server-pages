navigaton and pg rendering
includeSspFile: url
	"You can call this method from within your ssp pages.  For example:
		<? self includeSspFile: 'header.ssp' ?>"

	| cls inst |
	cls := SspApplication current urlsHandled at: url ifAbsent: [^nil].
	inst := cls new.
	inst filename: url.
	inst initFromPage: self.
	self parseAndEvaluate: inst pageContents for: inst.
	^''