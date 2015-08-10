accessing
numberAt: key

	^(self at: key ifAbsent: [0]) asNumber