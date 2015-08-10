tags private
indentWhile: aBlock

	self level: self level + 1.
	aBlock ensure: [self level: self level - 1].