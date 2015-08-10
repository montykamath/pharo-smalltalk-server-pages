import / export ssp files
importFileAsMethod: fn

	| str source fileContents selector |

	fn exists ifFalse: [^self].
	
	fileContents := fn contentsOfEntireFile.
	
"convert filename into a valid method name"
	selector := self convertFilenameToSelectorString: fn.
	
"only update the method if it has changed"
	((self respondsTo: selector asSymbol) not 
		or: [((self perform: selector asSymbol) isKindOf: Association) not 
			or: [fileContents ~= (self perform: selector asSymbol) value]])
		ifTrue:
			[str := fileContents copyReplaceAll: '''' with: ''''''.
			source := selector, String cr, '^''',fn asRelativeString,'''->''', str, ''''.
			self class compile: source classified: 'filesFromDisk' notifying: nil]