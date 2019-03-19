subscriptions nodes
subscriptionsNodeFor: varNode

	^ self subscriptionsNodes
		at: varNode name
		ifAbsentPut: [
			varNode lookupSubscriptionsNode: self]