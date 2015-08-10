starting stopping
createFileServerDelegate

	^ZnStaticFileServerDelegate new
		prefixFromString: ''; 
		directory: ZnFileSystemUtils defaultDirectory;
		mimeTypeExpirations: ZnStaticFileServerDelegate defaultMimeTypeExpirations;
		yourself