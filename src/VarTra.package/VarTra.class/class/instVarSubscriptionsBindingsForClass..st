subscriptions management
instVarSubscriptionsBindingsForClass: aClass

	^ self instVarSubscriptionsBindings
		at: aClass
		ifAbsentPut: [WeakIdentityKeyDictionary new]