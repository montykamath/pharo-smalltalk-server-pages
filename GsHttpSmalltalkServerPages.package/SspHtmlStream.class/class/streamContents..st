accessing
streamContents: aBlock

	| str |
	str := self new.
	aBlock value: str.
	^str contents