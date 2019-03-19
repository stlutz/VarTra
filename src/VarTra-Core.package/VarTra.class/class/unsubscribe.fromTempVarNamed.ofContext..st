public
unsubscribe: subscriber fromTempVarNamed: tempVarName ofContext: aContext

	(self subscriptionsForTempVarNamed: tempVarName ofContext: aContext)
		remove: subscriber
		ifAbsent: []