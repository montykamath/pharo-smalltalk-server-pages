as yet unclassified
handleRequest

	(fields stringAt: 'action') = 'clearCachedPages'
		ifTrue: 
			[SspPage refreshCachedPages.
			^self inform: 'Done'].
	
	^super handleRequest	
	
	