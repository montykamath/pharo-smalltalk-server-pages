accessing
numberAt: key ifAbsent: aBlock

	^(self at: key ifAbsent: [^aBlock value]) asNumber