private
setFieldsFrom: aRequest
	"Convert the get and post field dictionaries into 1 with a nice easy protocol"

	| mf |
	self fields: SspFormDictionary new.
	
	mf := aRequest mergedFields .
	mf keysDo: [:key | self fields at: key put: (mf at: key)].
	
	self processMultiPartFields: aRequest.