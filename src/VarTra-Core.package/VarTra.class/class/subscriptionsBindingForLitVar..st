subscriptions management
subscriptionsBindingForLitVar: litVarBinding

	^ self litVarSubscriptionsBindings
		at: litVarBinding
		ifAbsentPut: [
			(SubscriptionsBindingKeyPrefix , 'Lit:' , litVarBinding key) -> nil]