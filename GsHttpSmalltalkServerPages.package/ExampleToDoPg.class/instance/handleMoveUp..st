handling
handleMoveUp: selectedItem 
	| before |
	selectedItem ifNil: [^nil].
	before := toDoList 
		before: selectedItem
		ifAbsent: [  ].
	toDoList remove: selectedItem.
	before isNil 
		ifTrue: [ toDoList addFirst: selectedItem ]
		ifFalse: 
			[ toDoList 
				add: selectedItem
				before: before ]