accessing
instVarSubscriptionsBindings

	^ InstVarSubscriptionsBindings ifNil: [
		InstVarSubscriptionsBindings := WeakIdentityKeyDictionary new]