initialization
initialize
	"self initialize"
	
	Smalltalk removeFromStartUpList: self.
	Smalltalk removeFromShutDownList: self.
	
	Smalltalk addToStartUpList: self.
	Smalltalk addToShutDownList: self.