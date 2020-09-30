initialization
initialize

	self reset.
	self initializeClassesNotToTrack.
	SubscriptionsBindingKeyPrefix := 'VtSB:'.
	
	(Smalltalk isHeadless not ==> [self confirmInstallation]) ifTrue: [self install]