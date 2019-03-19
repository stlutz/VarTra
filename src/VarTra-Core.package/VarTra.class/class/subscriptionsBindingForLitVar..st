subscriptions management
subscriptionsBindingForLitVar: litVarBinding

	^ self litVarSubscriptionsBindings
		at: litVarBinding
		ifAbsentPut: [
			(self subscriptionsBindingKeyPrefix , litVarBinding key) -> nil]