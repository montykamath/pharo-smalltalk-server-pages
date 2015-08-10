accessing
renderContinueButton

	^self continueUrl isNil
		ifTrue: ['']
		ifFalse: 
			[SspHtmlStream streamContents:
				[:str |
				str form: '' with:
					[str input: (
						'name="action" value="Continue" type="submit" onclick="location.href=''', self continueUrl ,'''; return false" ' )]]]