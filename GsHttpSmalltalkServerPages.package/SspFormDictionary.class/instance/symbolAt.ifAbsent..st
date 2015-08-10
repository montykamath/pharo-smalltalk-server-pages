accessing
symbolAt: key ifAbsent: aBlock

	^(self at: key ifAbsent: [^aBlock value]) asString asSymbol