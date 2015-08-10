tags forms
singleSelectListNamed: name items: items selected: selected

	self
		nextPutAll: '<select name="';
		nextPutAll: name;
		nextPutAll: '">'.
	items do:
		[:item |
		self 
			nextPutAll: '<option'.
		item = selected 
			ifTrue: [self nextPutAll: ' selected'].
		self
			nextPutAll: ' value="';
			nextPutAll: item asString;
			nextPutAll: '">';
			nextPutAll: item asString;
			nextPutAll: '</option>'].
	self nextPutAll: '</select>'