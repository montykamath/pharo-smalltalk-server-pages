tags forms
multiSelectListNamed: name items: items selected: selected

	self
		nextPutAll: '<select size="4" multiple="multiple" name="';
		nextPutAll: name;
		nextPutAll: '">'.
	items do:
		[:item |
		self 
			nextPutAll: '<option'.
		(selected includes: item)
			ifTrue: [self nextPutAll: ' selected'].
		self
			nextPutAll: ' value="';
			nextPutAll: item asString;
			nextPutAll: '">';
			nextPutAll: item asString;
			nextPutAll: '</option>'].
	self nextPutAll: '</select>'