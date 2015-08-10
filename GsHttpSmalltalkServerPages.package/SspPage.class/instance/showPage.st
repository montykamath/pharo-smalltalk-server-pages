navigaton and pg rendering
showPage
	"Write out the page and replace parts like <? Date today ?> with the printString after evaluating"

	self parseAndEvaluate: self pageContents for: self.