accessing
tailWithoutExtension
	"Answer the receiver's extension if any.  This is the characters from the
	 last occurrence of a period to the end, inclusive. E.g. the extension of
	 'squeak.image' is '.image'. Answer nil if none.  Note that e.g. .login has no
	 extension."
	"(SspFilename named: 'monty.jpg') tailWithoutExtension = 'monty'"

	| string periodIndex |
	string := self tail.
	periodIndex := string lastIndexOf: $..
	^periodIndex > 1 ifTrue: [string copyFrom: 1 to: periodIndex -1]