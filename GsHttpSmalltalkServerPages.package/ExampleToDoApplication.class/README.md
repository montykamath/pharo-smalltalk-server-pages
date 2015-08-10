To Try It Out:
	* Load the KomHttpServer (required prereq)
	* Load the HttpSmalltalkServerPages package
	* Execute this in a workspace:
		SspApplication startApplication: ExampleToDoApplication
	* Go To:  http://localhost:3001/todo.ssp
	* To stop the application execute this in a workspace: 
		SspApplication stopCurrentApplication
	* If you want to walk through the framework code put a halt in SspApplication>>handleRequest:
	
Framework Includes
    * SspApplication for app settings and dispatching requests
    * SspComponent (super class of all smalltalk server pages)
    * SspHtmlStream to generate html
    * SspFilename (for file handling simplification)
    * SspFormDictionary (for accessing get/post fields easily)
    * SspUploadedFile (for multipart file uploads)
    * Very few method exetensions

	