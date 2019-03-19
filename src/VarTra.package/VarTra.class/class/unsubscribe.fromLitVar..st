public
unsubscribe: anObject fromLitVar: binding

	(self subscriptionsForLitVar: binding)
		remove: anObject
		ifAbsent: []