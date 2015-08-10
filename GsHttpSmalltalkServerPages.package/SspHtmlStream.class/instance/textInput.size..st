tags forms
textInput: name size: size

	self 
		nextPutAll: '<input type="text" ';
		nextPutAll: 'name="';
		nextPutAll: name;
		nextPutAll: '" size="';
		nextPutAll: '">'.