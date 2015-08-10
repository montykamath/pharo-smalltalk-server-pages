tags forms
textInput: name size: size value: value onClick: aString

	self 
		nextPutAll: '<input type="text" ';
		nextPutAll: 'name="';
		nextPutAll: name;
		nextPutAll: '" size="';
		nextPutAll: size asString;
		nextPutAll: '" value="';
		nextPutAll: value asString;
		nextPutAll: '" onClick:="';
		nextPutAll: '">'.