private
lastSeparatorIndex
	^self asString lastIndexOf: self separator ifAbsent: [nil]