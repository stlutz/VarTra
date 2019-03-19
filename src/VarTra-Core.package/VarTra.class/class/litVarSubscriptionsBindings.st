accessing
litVarSubscriptionsBindings

	^ LitVarSubscriptionsBindings ifNil: [
		LitVarSubscriptionsBindings := WeakIdentityKeyDictionary new]