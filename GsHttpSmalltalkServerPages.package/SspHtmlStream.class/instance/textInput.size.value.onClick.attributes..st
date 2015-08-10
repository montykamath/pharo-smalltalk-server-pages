tags forms
textInput: name size: size value: value onClick: aString attributes: attr

	self 
		nextPutAll: '<input type="text" ';
		nextPutAll: 'name="';
		nextPutAll: name;
		nextPutAll: '" size="';
		nextPutAll: size asString;
		nextPutAll: '" value="';
		nextPutAll: value asString;
		nextPutAll: '" onClick:="';
		nextPutAll: '" ';
		nextPutAll: attr;
		nextPutAll: '>'.