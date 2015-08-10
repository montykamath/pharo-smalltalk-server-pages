converting
convertToHtml: aString

	| temp |
	temp := aString copyReplaceAll: '&' with: '&amp;'.
	self class htmlEntities keysAndValuesDo:
		[:entity :char |
		char = $& ifFalse:
			[temp := aString copyReplaceAll: char asString with: '&' , entity , ';']].
	temp := temp copyReplaceAll: '
' with: '
<BR>'.
	^ temp