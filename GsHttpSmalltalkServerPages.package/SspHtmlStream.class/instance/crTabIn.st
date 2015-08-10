tags private
crTabIn

	(self stream position > 0 and: [self stream peekLast = Character tab]) 
		ifTrue: [^self].

	self stream cr.
	self level timesRepeat: [self stream tab].