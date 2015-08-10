tags forms
textInput: name size: size value: value

	self 
		nextPutAll: '<input type="text" ';
		nextPutAll: 'name="';
		nextPutAll: name;
		nextPutAll: '" size="';
		nextPutAll: size asString;
		nextPutAll: '" value="';
		nextPutAll: '">'.