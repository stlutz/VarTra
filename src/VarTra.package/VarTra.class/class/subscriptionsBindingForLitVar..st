as yet unclassified
subscriptionsBindingForLitVar: litVarBinding

	^ self litVarSubscriptionsBindings
		at: litVarBinding
		ifAbsentPut: [
			(self subscriptionsBindingKeyPrefix , litVarBinding key) asSymbol -> nil]