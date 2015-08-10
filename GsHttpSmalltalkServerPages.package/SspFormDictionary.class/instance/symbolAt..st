accessing
symbolAt: key

	^(self at: key ifAbsent: ['']) asString asSymbol