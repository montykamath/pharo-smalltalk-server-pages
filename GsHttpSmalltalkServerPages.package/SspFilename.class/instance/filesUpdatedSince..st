services
filesUpdatedSince: seconds

	| dir |
	dir := self asFileReference.
	^(dir entries select: [:e | e modificationTime > seconds ]) collect: [:e | self , e name]