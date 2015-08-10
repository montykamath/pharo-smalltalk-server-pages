import / export ssp files
exportMethodsAsFiles
	"This makes it possible to save ssp pages insiide your class so they can be versioned right along with your code.
	Manually run this code to dump the method contents back into files on the filesystem.
	It will only dump out files that have diff contents."
		"MySspApplication new exportMethodsAsFiles"

	self filenameSelectors do: 
		[:selector | | assoc fn writeStream contents |
		assoc := self perform: selector.
		fn := SspFilename default, assoc key.
		contents := assoc value.
		fn directory exists ifFalse: [fn directory makeDirectory].
		(fn exists not or: [fn contentsOfEntireFile ~= contents])
			ifTrue:
				[fn exists ifTrue: [fn delete].
				writeStream := fn writeStream.
				[writeStream nextPutAll: contents] ensure: [writeStream close]]].