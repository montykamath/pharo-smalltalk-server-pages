instance creation
named: aString 
	"^a SspFilename
	I create a new instance of myself to represent the filename identified by aString."

	^self new 
		named: aString;
		yourself