tags forms
submitButton: name attributes: attr

	self 
		nextPutAll: '<input type="submit" ';
		nextPutAll: 'name="';
		nextPutAll: name;
		nextPutAll: '" ';
		nextPutAll: attr;
		nextPutAll: '>'.