private
named: aString 
	"If aString IS an absolute path, then convert slashes and use it"
	"If aString is NOT absolute, then convert slashes and assume it is relative to the default dir"

	| str isAbsolute |
	str := self privateConvertSlashes: aString.
	isAbsolute := 
		(str notEmpty and: [str first == self separator]) 
			or: [str size > 1 and: [str second == $:]].
	underlyingFilename :=
		isAbsolute
			ifTrue: [str]
			ifFalse: [(FileSystem disk workingDirectory / str) fullName].
	^self