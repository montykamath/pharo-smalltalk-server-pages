handling
handleRequest

	| action idx selectedItem |
	self toDoList: self getToDoListFromSession.
	idx := self fields numberAt: 'idx'.
	selectedItem := toDoList at: idx ifAbsent: [nil].
	
	action := self fields stringAt: 'action'.
	action = 'add' ifTrue: [ self handleAdd ].
	action = 'remove' ifTrue: [ self handleRemove: selectedItem ].
	action = 'up' ifTrue: [ self handleMoveUp: selectedItem ].
	action = 'down' ifTrue: [ self handleMoveDown: selectedItem ].
	action = 'clear' 
		ifTrue: 
			["clear shows an inform pg so return here" 
			^self handleClear ].

	^ self showPage