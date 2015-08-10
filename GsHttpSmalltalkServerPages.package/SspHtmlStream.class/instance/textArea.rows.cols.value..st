tags forms
textArea: name rows: r cols: c value: val

	self 
		nextPutAll: '<textarea name="';
		nextPutAll: name;
		nextPutAll: '" rows="';
		nextPutAll: r asString;
		nextPutAll: '" cols="';
		nextPutAll: c asString;
		nextPutAll: '">';
		nextPutAll: val asString;
		nextPutAll: '</textarea>'.