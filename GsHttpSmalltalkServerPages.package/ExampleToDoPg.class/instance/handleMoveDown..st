handling
handleMoveDown: selectedItem 
	| after |
	selectedItem ifNil: [^nil].
	after := toDoList 
		after: selectedItem
		ifAbsent: [  ].
	toDoList remove: selectedItem.
	after isNil 
		ifTrue: [ toDoList addLast: selectedItem ]
		ifFalse: 
			[ toDoList 
				add: selectedItem
				after: after ]