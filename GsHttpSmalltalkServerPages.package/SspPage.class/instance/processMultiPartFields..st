private
processMultiPartFields: aRequest
	"Taken from seaside framework.  
	It converts file uploads in the incoming request into named fields in the fields dictionary just like all other get or post fields."
	
	(aRequest hasEntity and: [ aRequest contentType matches: ZnMimeType multiPartFormData ])
		ifFalse: [^self].
	
	aRequest entity partsDo: 
		[:chunk |
		| contents fieldName previousValue |
		fieldName := chunk fieldName.
		contents := 
			chunk fileName isEmptyOrNil
				ifTrue: [ chunk fieldValueString ]
				ifFalse: 
					[SspUploadedFile new
						filename: chunk fileName;
						contents: chunk contents;
						contentType: chunk contentType;
						yourself].
		previousValue := fields at: fieldName ifAbsent: [nil].
		previousValue isNil
			ifTrue: [ fields at: fieldName put: contents]
			ifFalse: 
				[(previousValue isKindOf: OrderedCollection)
					ifTrue: [previousValue add: contents]
					ifFalse: 
						[fields
							at: fieldName 
							put: (OrderedCollection with: previousValue with: contents)]]]
				