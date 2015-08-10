accessing
directoryContents

	| fileReference | 
	fileReference := self asFileReference.
	fileReference exists ifFalse:[^OrderedCollection new].
	^fileReference entries collect: [:e | self construct: e basename]