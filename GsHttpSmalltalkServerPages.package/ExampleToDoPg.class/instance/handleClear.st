handling
handleClear
	self session 
		attributeAt: 'list'
		put: OrderedCollection new.
	self toDoList: self getToDoListFromSession.
	self inform: 'List Cleared'