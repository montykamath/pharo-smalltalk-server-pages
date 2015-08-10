import / export ssp files
convertFilenameToSelectorString: fn
		
	| answer |
	answer := 'FILE', fn asRelativeString.
	answer := answer copyReplaceAll: '.' with: 'DOT'.
	answer := answer copyReplaceAll: '\' with: 'SLASH'.
	answer := answer copyReplaceAll: '/' with: 'SLASH'.
	answer := answer copyReplaceAll: '-' with: 'DASH'.
	answer := answer copyReplaceAll: '_' with: 'UNDSC'.
	^answer