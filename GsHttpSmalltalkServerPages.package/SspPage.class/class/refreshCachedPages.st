accessing
refreshCachedPages

	self allSubclassesDo: [:cls | cls refreshCachedPage]