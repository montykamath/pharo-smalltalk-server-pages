navigaton and pg rendering
warn: aString continueUrl: url
	
	SspApplication current notificationPageClass new
		initFromPage: self;
		title: 'Oops';
		message: aString;
		continueUrl: url;
		continueButtonText: 'Go Back';
		handleRequest