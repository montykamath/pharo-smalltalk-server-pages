tags forms
singleSelectListNamed: name items: items selected: selected attributes: attr

	self
		nextPutAll: '<select name="';
		nextPutAll: name;
		nextPutAll: '" ';
		nextPutAll: attr;
		nextPutAll: '>'.
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