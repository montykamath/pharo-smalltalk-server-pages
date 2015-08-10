private
privateConvertSlashes: aString

	| str |
	str := aString.
	(str last = $/ or: [str last = $\]) 
		ifTrue: [str := str allButLast].
	str := str copyReplaceAll: '/' with: self separator asString.
	str := str copyReplaceAll: '\' with: self separator asString.
	^str