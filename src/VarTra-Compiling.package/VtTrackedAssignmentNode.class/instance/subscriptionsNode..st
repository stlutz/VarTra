node generation
subscriptionsNode: encoder

	^ subscriptionsNode ifNil: [
		subscriptionsNode := variable lookupSubscriptionsNode: encoder]