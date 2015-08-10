accessing
response: anObject

	response ifNotNil: 
		[ :resp | 
		resp ~= anObject 
			ifTrue:[self error: 'SspPage unable to set response: because response is already set' ]].
	^ response := anObject