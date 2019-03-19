subscriptions management
instVarSubscriptionsBindingsForClass: aClass

	^ self instVarSubscriptionsBindings
		at: aClass
		ifAbsentPut: [IdentityDictionary new]