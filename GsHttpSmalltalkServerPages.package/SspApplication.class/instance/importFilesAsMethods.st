import / export ssp files
importFilesAsMethods
	"This makes it possible to save ssp pages insiide your class so they can be versioned right along with your code.
	Manually run this code to suck the files into methods on your class.  
	It will only suck in those files that have diff contents.
	If the file no longer exists.. it will delete the file"
		"MySspApplication new importFilesAsMethods"

	"Import existing files that are new or have changed"
	self filesToImport do: [:fn | self importFileAsMethod: fn].

	"Delete files that have gone away"
	self filenameSelectors do: 
		[:e | |fn| 
		fn := (self perform: e) key. 
		(SspFilename default , fn) exists 
			ifFalse: [self class removeSelector: e asSymbol]]