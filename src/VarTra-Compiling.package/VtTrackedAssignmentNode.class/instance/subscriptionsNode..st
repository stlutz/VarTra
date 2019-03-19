node generation
subscriptionsNode: encoder

	^ subscriptionsNode ifNil: [
		subscriptionsNode := encoder subscriptionsNodeFor: variable]