public
unsubscribe: subscriber fromInstVarNamed: instVarName ofObject: anObject

	(self subscriptionsForInstVarNamed: instVarName ofObject: anObject)
		remove: subscriber
		ifAbsent: []