running
urlsHandled

	| urls |
	urls := Dictionary new.
	SspPage allSubclassesDo: 
		[:cls | 
		cls filename ifNotNil: 
			[urls at: cls filename put: cls]].

	"This makes it so you can have sssPages without a class that goes with them.
	These are for purely static pages or pages that do very little"
	self sspDirectory directoryContents do: [:fn | urls at: fn tail ifAbsentPut: [SspDoLittlePg]].

	"This is so we can make any page the front page"
	^urls
		at: '' put: self frontPageClass;
		at: '/' put: self frontPageClass;
		yourself