tags
checkbox: attributes checked: aBoolean

	self tagSingle: 'input' attributes: 'type="checkbox" ' , attributes, (aBoolean ifTrue: [' checked'] ifFalse: [' '])