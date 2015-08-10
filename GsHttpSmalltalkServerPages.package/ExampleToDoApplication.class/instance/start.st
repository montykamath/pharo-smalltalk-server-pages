overrides
start
	"SspApplication stopCurrentApplication.
	SspApplication current: (
		ExampleToDoApplication new
			isDebugMode: true;
			yourself).
	SspApplication current start."

	super start