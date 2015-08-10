file in
fileIn

	[| str |
	str := self readStream.
	[str fileIn] ensure: [str close]]
		on: FileDoesNotExistException
		do: [:ex | self error: 'File does not exist: ', self asString].