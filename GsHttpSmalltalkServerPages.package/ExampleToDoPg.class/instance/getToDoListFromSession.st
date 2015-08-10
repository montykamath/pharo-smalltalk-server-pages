handling
getToDoListFromSession
	^ self session 
		attributeAt: 'list'
		ifAbsentPut: [ OrderedCollection new ]