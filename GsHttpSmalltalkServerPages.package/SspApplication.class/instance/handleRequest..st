running
handleRequest: request

	^ [ self handleRequestProtected: request ]
		on: Error
		do: [ :exception | 
			self isDebugMode
				ifTrue: [ exception pass  ]
				ifFalse: [
					self writeWalkbackFileForException: exception request: request.
					ZnResponse serverError: exception printString ] ]