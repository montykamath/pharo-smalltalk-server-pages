tags forms
textInput: name attributes: attr

	self 
		nextPutAll: '<input ';
		nextPutAll: 'name="';
		nextPutAll: name;
		nextPutAll: '" ';
		nextPutAll: attr;
		nextPutAll: '>'.