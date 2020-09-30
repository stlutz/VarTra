initialization
initialize

	self initializeClassesNotToTrack.
	SubscriptionsBindingKeyPrefix := 'VtSB:'.
	self install "I would prefer to warn the user first, but that breaks travisci"