initialize-release
initFromPage: aPage

	self
		request: aPage request;
		fields: aPage fields;
		session: aPage session;
		outputStream: aPage outputStream