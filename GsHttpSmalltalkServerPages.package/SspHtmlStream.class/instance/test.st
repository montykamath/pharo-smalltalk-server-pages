testing
test

	| str |
	str := self class new.
	str html: 
		[str body: 
			[str font: 'size="+1"' with: [str nextPutText: 'foo'].
			str
				break;
				paragraph: [str anchor: 'htt://foo.com' with: 'foo'].
			str 
				table: 'colspacing="0"' 
				with: [str tableRow: [str tableData: [str small: [str nextPutHtml: '&nbsp;'; nextPutText: '<>'; strong: 'foo']]]]]].
	str stream contents