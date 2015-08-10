accessing
refreshCachedPage
	"Most classes have 1 file.. This class can have many so the class side cachedPageContents is actually a 
	Dictionary where filename->file contents.  
	This class makes it possible to have ssp pages that don't have matching classes.  
	When there is no matching ssp class we use this class instead."
	
	cachedPageContents := Dictionary new