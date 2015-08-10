accessing
stringAt: key

	^(self at: key ifAbsent: ['']) asString