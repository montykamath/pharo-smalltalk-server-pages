navigaton and pg rendering
inform: aString title: titleString continueUrl: url continueButtonText: continueButtonString
	
	SspApplication current notificationPageClass new
		initFromPage: self;
		title: titleString;
		message: aString;
		continueUrl: url;
		continueButtonText: continueButtonString;
		handleRequest