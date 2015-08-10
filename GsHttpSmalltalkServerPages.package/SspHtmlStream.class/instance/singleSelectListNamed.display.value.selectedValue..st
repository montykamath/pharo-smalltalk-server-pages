tags forms
singleSelectListNamed: name display: displayItems value: valueItems selectedValue: selectedValue

	self
		nextPutAll: '<select name="';
		nextPutAll: name;
		nextPutAll: '">'.
	valueItems with: displayItems do:
		[:value :display |
		self 
			nextPutAll: '<option'.
		selectedValue = value 
			ifTrue: [self nextPutAll: ' selected'].
		self
			nextPutAll: ' value="';
			nextPutAll: value asString;
			nextPutAll: '">';
			nextPutAll: display asString;
			nextPutAll: '</option>'].
	self nextPutAll: '</select>'.